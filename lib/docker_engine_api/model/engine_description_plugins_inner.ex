# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.EngineDescriptionPluginsInner do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :Type,
    :Name
  ]

  @type t :: %__MODULE__{
    :Type => String.t | nil,
    :Name => String.t | nil
  }

  def decode(value) do
    value
  end
end
