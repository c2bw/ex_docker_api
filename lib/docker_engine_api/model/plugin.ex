# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Plugin do
  @moduledoc """
  A plugin for the Engine API
  """

  @derive JSON.Encoder
  defstruct [
    :Id,
    :Name,
    :Enabled,
    :Settings,
    :PluginReference,
    :Config
  ]

  @type t :: %__MODULE__{
    :Id => String.t | nil,
    :Name => String.t,
    :Enabled => boolean(),
    :Settings => DockerEngineAPI.Model.PluginSettings.t,
    :PluginReference => String.t | nil,
    :Config => DockerEngineAPI.Model.PluginConfig.t
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Settings, :struct, DockerEngineAPI.Model.PluginSettings)
     |> Deserializer.deserialize(:Config, :struct, DockerEngineAPI.Model.PluginConfig)
  end
end
