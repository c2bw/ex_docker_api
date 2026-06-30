defmodule DockerEngineAPI.RequestBuilderTest do
  use ExUnit.Case, async: true

  alias DockerEngineAPI.RequestBuilder

  describe "add_optional_params/3" do
    test "adds only declared optional parameters" do
      request =
        %{}
        |> RequestBuilder.add_optional_params(%{:filters => :query, :"X-Trace" => :headers}, [
          {:filters, "status=running"},
          {:"X-Trace", "abc123"},
          {:unknown, "ignored"}
        ])

      assert request.query == [filters: "status=running"]
      assert request.headers == [{"X-Trace", "abc123"}]
      refute Map.has_key?(request, :unknown)
    end
  end

  describe "add_param/4" do
    test "keeps repeated query parameters in insertion order" do
      request =
        %{}
        |> RequestBuilder.add_param(:query, :t, "repo:latest")
        |> RequestBuilder.add_param(:query, :t, "repo:stable")

      assert request.query == [t: "repo:latest", t: "repo:stable"]
    end

    test "sets raw body values without wrapping them" do
      body = <<1, 2, 3>>

      assert %{body: ^body} = RequestBuilder.add_param(%{}, :body, :body, body)
    end

    test "replaces duplicate headers case sensitively" do
      request =
        %{headers: [{"X-Test", "old"}]}
        |> RequestBuilder.add_param(:headers, :"X-Test", "new")

      assert request.headers == [{"X-Test", "new"}]
    end
  end

  describe "ensure_body/1" do
    test "adds an empty body when one is missing or nil" do
      assert %{body: ""} = RequestBuilder.ensure_body(%{})
      assert %{body: ""} = RequestBuilder.ensure_body(%{body: nil})
      assert %{body: "payload"} = RequestBuilder.ensure_body(%{body: "payload"})
    end
  end

  describe "evaluate_response/2" do
    test "returns env unchanged when response mapping is false" do
      env = %Tesla.Env{status: 204, body: ""}

      assert {:ok, ^env} = RequestBuilder.evaluate_response({:ok, env}, [{204, false}])
    end

    test "decodes matching response into the mapped model" do
      body = ~s({"message":"not found"})
      env = %Tesla.Env{status: 404, body: body}

      assert {:ok, %DockerEngineAPI.Model.ErrorResponse{message: "not found"}} =
               RequestBuilder.evaluate_response({:ok, env}, [
                 {200, false},
                 {404, DockerEngineAPI.Model.ErrorResponse}
               ])
    end

    test "uses default mapping when no exact status mapping exists" do
      body = ~s({"message":"daemon unavailable"})
      env = %Tesla.Env{status: 503, body: body}

      assert {:ok, %DockerEngineAPI.Model.ErrorResponse{message: "daemon unavailable"}} =
               RequestBuilder.evaluate_response({:ok, env}, [
                 {:default, DockerEngineAPI.Model.ErrorResponse}
               ])
    end

    test "returns an error tuple for unmapped statuses" do
      env = %Tesla.Env{status: 418, body: "teapot"}

      assert {:error, ^env} = RequestBuilder.evaluate_response({:ok, env}, [{200, false}])
    end
  end
end
