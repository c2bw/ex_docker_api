# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Service do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :ID,
    :Version,
    :CreatedAt,
    :UpdatedAt,
    :Spec,
    :Endpoint,
    :UpdateStatus,
    :ServiceStatus,
    :JobStatus
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Version => DockerEngineAPI.Model.ObjectVersion.t | nil,
    :CreatedAt => String.t | nil,
    :UpdatedAt => String.t | nil,
    :Spec => DockerEngineAPI.Model.ServiceSpec.t | nil,
    :Endpoint => DockerEngineAPI.Model.ServiceEndpoint.t | nil,
    :UpdateStatus => DockerEngineAPI.Model.ServiceUpdateStatus.t | nil,
    :ServiceStatus => DockerEngineAPI.Model.ServiceServiceStatus.t | nil,
    :JobStatus => DockerEngineAPI.Model.ServiceJobStatus.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Version, :struct, DockerEngineAPI.Model.ObjectVersion)
     |> Deserializer.deserialize(:Spec, :struct, DockerEngineAPI.Model.ServiceSpec)
     |> Deserializer.deserialize(:Endpoint, :struct, DockerEngineAPI.Model.ServiceEndpoint)
     |> Deserializer.deserialize(:UpdateStatus, :struct, DockerEngineAPI.Model.ServiceUpdateStatus)
     |> Deserializer.deserialize(:ServiceStatus, :struct, DockerEngineAPI.Model.ServiceServiceStatus)
     |> Deserializer.deserialize(:JobStatus, :struct, DockerEngineAPI.Model.ServiceJobStatus)
  end
end
