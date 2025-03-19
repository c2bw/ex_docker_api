# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.OciPlatform do
  @moduledoc """
  Describes the platform which the image in the manifest runs on, as defined in the [OCI Image Index Specification](https://github.com/opencontainers/image-spec/blob/v1.0.1/image-index.md).
  """

  @derive JSON.Encoder
  defstruct [
    :architecture,
    :os,
    :"os.version",
    :"os.features",
    :variant
  ]

  @type t :: %__MODULE__{
    :architecture => String.t | nil,
    :os => String.t | nil,
    :"os.version" => String.t | nil,
    :"os.features" => [String.t] | nil,
    :variant => String.t | nil
  }

  def decode(value) do
    value
  end
end
