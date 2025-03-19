# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SwarmSpecTaskDefaults do
  @moduledoc """
  Defaults for creating tasks in this cluster.
  """

  @derive JSON.Encoder
  defstruct [
    :LogDriver
  ]

  @type t :: %__MODULE__{
    :LogDriver => DockerEngineAPI.Model.SwarmSpecTaskDefaultsLogDriver.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:LogDriver, :struct, DockerEngineAPI.Model.SwarmSpecTaskDefaultsLogDriver)
  end
end
