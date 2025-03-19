# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.RegistryServiceConfig do
  @moduledoc """
  RegistryServiceConfig stores daemon registry services configuration.
  """

  @derive Jason.Encoder
  defstruct [
    :AllowNondistributableArtifactsCIDRs,
    :AllowNondistributableArtifactsHostnames,
    :InsecureRegistryCIDRs,
    :IndexConfigs,
    :Mirrors
  ]

  @type t :: %__MODULE__{
    :AllowNondistributableArtifactsCIDRs => [String.t] | nil,
    :AllowNondistributableArtifactsHostnames => [String.t] | nil,
    :InsecureRegistryCIDRs => [String.t] | nil,
    :IndexConfigs => %{optional(String.t) => DockerEngineAPI.Model.IndexInfo.t} | nil,
    :Mirrors => [String.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:IndexConfigs, :map, DockerEngineAPI.Model.IndexInfo)
  end
end
