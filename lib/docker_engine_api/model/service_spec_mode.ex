# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ServiceSpecMode do
  @moduledoc """
  Scheduling mode for the service.
  """

  @derive JSON.Encoder
  defstruct [
    :Replicated,
    :Global,
    :ReplicatedJob,
    :GlobalJob
  ]

  @type t :: %__MODULE__{
    :Replicated => DockerEngineAPI.Model.ServiceSpecModeReplicated.t | nil,
    :Global => map() | nil,
    :ReplicatedJob => DockerEngineAPI.Model.ServiceSpecModeReplicatedJob.t | nil,
    :GlobalJob => map() | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Replicated, :struct, DockerEngineAPI.Model.ServiceSpecModeReplicated)
     |> Deserializer.deserialize(:ReplicatedJob, :struct, DockerEngineAPI.Model.ServiceSpecModeReplicatedJob)
  end
end
