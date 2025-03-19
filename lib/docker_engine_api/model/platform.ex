# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Platform do
  @moduledoc """
  Platform represents the platform (Arch/OS).
  """

  @derive Jason.Encoder
  defstruct [
    :Architecture,
    :OS
  ]

  @type t :: %__MODULE__{
    :Architecture => String.t | nil,
    :OS => String.t | nil
  }

  def decode(value) do
    value
  end
end
