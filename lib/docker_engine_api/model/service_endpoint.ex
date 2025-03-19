# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ServiceEndpoint do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :Spec,
    :Ports,
    :VirtualIPs
  ]

  @type t :: %__MODULE__{
    :Spec => DockerEngineAPI.Model.EndpointSpec.t | nil,
    :Ports => [DockerEngineAPI.Model.EndpointPortConfig.t] | nil,
    :VirtualIPs => [DockerEngineAPI.Model.ServiceEndpointVirtualIpsInner.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Spec, :struct, DockerEngineAPI.Model.EndpointSpec)
     |> Deserializer.deserialize(:Ports, :list, DockerEngineAPI.Model.EndpointPortConfig)
     |> Deserializer.deserialize(:VirtualIPs, :list, DockerEngineAPI.Model.ServiceEndpointVirtualIpsInner)
  end
end
