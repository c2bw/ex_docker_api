# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerUpdateResponse do
  @moduledoc """
  Response for a successful container-update.
  """

  @derive JSON.Encoder
  defstruct [
    :Warnings
  ]

  @type t :: %__MODULE__{
    :Warnings => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
