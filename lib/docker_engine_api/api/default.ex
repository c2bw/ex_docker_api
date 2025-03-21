# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Export an image
  Get a tarball containing all images and metadata for a repository.  If `name` is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned. If `name` is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the `repositories` file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - `VERSION`: currently `1.0` - the file format version - `json`: detailed layer information, similar to `docker inspect layer_id` - `layer.tar`: A tarfile containing the filesystem changes in this layer  The `layer.tar` file contains `aufs` style `.wh..wh.aufs` files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a `repositories` file at the root that contains a list of repository and tag names mapped to layer IDs.  ```json {   \"hello-world\": {     \"latest\": \"565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\"   } } ``` 

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `name` (String.t): Image name or ID
  - `opts` (keyword): Optional parameters
    - `:platform` (String.t): JSON encoded OCI platform describing a platform which will be used to select a platform-specific image to be saved if the image is multi-platform. If not provided, the full multi-platform image will be saved.  Example: `{\"os\": \"linux\", \"architecture\": \"arm\", \"variant\": \"v5\"}` 

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec image_get(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def image_get(connection, name, opts \\ []) do
    optional_params = %{
      :platform => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/images/#{name}/get")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {500, DockerEngineAPI.Model.ErrorResponse}
    ])
  end
end
