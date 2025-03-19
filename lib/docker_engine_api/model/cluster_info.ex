# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ClusterInfo do
  @moduledoc """
  ClusterInfo represents information about the swarm as is returned by the \"/info\" endpoint. Join-tokens are not included.
  """

  @derive JSON.Encoder
  defstruct [
    :ID,
    :Version,
    :CreatedAt,
    :UpdatedAt,
    :Spec,
    :TLSInfo,
    :RootRotationInProgress,
    :DataPathPort,
    :DefaultAddrPool,
    :SubnetSize
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Version => DockerEngineAPI.Model.ObjectVersion.t | nil,
    :CreatedAt => String.t | nil,
    :UpdatedAt => String.t | nil,
    :Spec => DockerEngineAPI.Model.SwarmSpec.t | nil,
    :TLSInfo => DockerEngineAPI.Model.TlsInfo.t | nil,
    :RootRotationInProgress => boolean() | nil,
    :DataPathPort => integer() | nil,
    :DefaultAddrPool => [String.t] | nil,
    :SubnetSize => integer() | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Version, :struct, DockerEngineAPI.Model.ObjectVersion)
     |> Deserializer.deserialize(:Spec, :struct, DockerEngineAPI.Model.SwarmSpec)
     |> Deserializer.deserialize(:TLSInfo, :struct, DockerEngineAPI.Model.TlsInfo)
  end
end
