# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Health do
  @moduledoc """
  Health stores information about the container's healthcheck results.
  """

  @derive JSON.Encoder
  defstruct [
    :Status,
    :FailingStreak,
    :Log
  ]

  @type t :: %__MODULE__{
    :Status => String.t | nil,
    :FailingStreak => integer() | nil,
    :Log => [DockerEngineAPI.Model.HealthcheckResult.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Log, :list, DockerEngineAPI.Model.HealthcheckResult)
  end
end
