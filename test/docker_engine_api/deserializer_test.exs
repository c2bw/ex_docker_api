defmodule DockerEngineAPI.DeserializerTest do
  use ExUnit.Case, async: true

  alias DockerEngineAPI.Deserializer

  describe "json_decode/2" do
    test "decodes JSON objects into generated structs" do
      json = ~s({"Id":"sha256:abc","RepoTags":["alpine:latest"],"Created":1710000000})

      assert {:ok, image} = Deserializer.json_decode(json, DockerEngineAPI.Model.ImageSummary)
      assert %DockerEngineAPI.Model.ImageSummary{} = image
      assert Map.fetch!(image, :Id) == "sha256:abc"
      assert Map.fetch!(image, :RepoTags) == ["alpine:latest"]
      assert Map.fetch!(image, :Created) == 1_710_000_000
    end

    test "decodes JSON arrays into lists of generated structs" do
      json = ~s([{"Path":"/etc/hosts","Kind":0},{"Path":"/tmp/new","Kind":1}])

      assert {:ok, changes} =
               Deserializer.json_decode(json, DockerEngineAPI.Model.FilesystemChange)

      assert Enum.map(changes, &Map.fetch!(&1, :Path)) == ["/etc/hosts", "/tmp/new"]
      assert Enum.map(changes, &Map.fetch!(&1, :Kind)) == [0, 1]
    end

    test "decodes nested structs" do
      json = ~s({"Id":"abc","HostConfig":{"NetworkMode":"default"}})

      assert {:ok, container} =
               Deserializer.json_decode(json, DockerEngineAPI.Model.ContainerSummary)

      host_config = Map.fetch!(container, :HostConfig)

      assert %DockerEngineAPI.Model.ContainerSummaryHostConfig{} = host_config
      assert Map.fetch!(host_config, :NetworkMode) == "default"
    end

    test "returns JSON decoding errors unchanged" do
      assert {:error, _reason} =
               Deserializer.json_decode("{invalid", DockerEngineAPI.Model.ImageSummary)
    end
  end

  describe "deserialize/4" do
    test "converts ISO8601 datetime fields" do
      model = %DockerEngineAPI.Model.ContainerStatsResponse{
        read: "2026-06-30T10:15:30Z",
        preread: "2026-06-30T10:15:29Z"
      }

      decoded =
        model
        |> Deserializer.deserialize(:read, :datetime, nil)
        |> Deserializer.deserialize(:preread, :datetime, nil)

      assert %DateTime{} = decoded.read
      assert decoded.read.year == 2026
      assert %DateTime{} = decoded.preread
    end

    test "leaves invalid datetime fields unchanged" do
      model = %DockerEngineAPI.Model.ContainerStatsResponse{read: "not-a-date"}

      assert ^model = Deserializer.deserialize(model, :read, :datetime, nil)
    end
  end
end
