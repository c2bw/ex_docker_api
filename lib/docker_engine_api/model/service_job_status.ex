# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ServiceJobStatus do
  @moduledoc """
  The status of the service when it is in one of ReplicatedJob or GlobalJob modes. Absent on Replicated and Global mode services. The JobIteration is an ObjectVersion, but unlike the Service's version, does not need to be sent with an update request.
  """

  @derive JSON.Encoder
  defstruct [
    :JobIteration,
    :LastExecution
  ]

  @type t :: %__MODULE__{
    :JobIteration => DockerEngineAPI.Model.ObjectVersion.t | nil,
    :LastExecution => String.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:JobIteration, :struct, DockerEngineAPI.Model.ObjectVersion)
  end
end
