# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecPlacement do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :Constraints,
    :Preferences,
    :MaxReplicas,
    :Platforms
  ]

  @type t :: %__MODULE__{
    :Constraints => [String.t] | nil,
    :Preferences => [DockerEngineAPI.Model.TaskSpecPlacementPreferencesInner.t] | nil,
    :MaxReplicas => integer() | nil,
    :Platforms => [DockerEngineAPI.Model.Platform.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Preferences, :list, DockerEngineAPI.Model.TaskSpecPlacementPreferencesInner)
     |> Deserializer.deserialize(:Platforms, :list, DockerEngineAPI.Model.Platform)
  end
end
