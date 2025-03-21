# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.NodeDescription do
  @moduledoc """
  NodeDescription encapsulates the properties of the Node as reported by the agent.
  """

  @derive JSON.Encoder
  defstruct [
    :Hostname,
    :Platform,
    :Resources,
    :Engine,
    :TLSInfo
  ]

  @type t :: %__MODULE__{
    :Hostname => String.t | nil,
    :Platform => DockerEngineAPI.Model.Platform.t | nil,
    :Resources => DockerEngineAPI.Model.ResourceObject.t | nil,
    :Engine => DockerEngineAPI.Model.EngineDescription.t | nil,
    :TLSInfo => DockerEngineAPI.Model.TlsInfo.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Platform, :struct, DockerEngineAPI.Model.Platform)
     |> Deserializer.deserialize(:Resources, :struct, DockerEngineAPI.Model.ResourceObject)
     |> Deserializer.deserialize(:Engine, :struct, DockerEngineAPI.Model.EngineDescription)
     |> Deserializer.deserialize(:TLSInfo, :struct, DockerEngineAPI.Model.TlsInfo)
  end
end
