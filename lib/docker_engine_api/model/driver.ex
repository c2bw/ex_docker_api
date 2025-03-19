# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Driver do
  @moduledoc """
  Driver represents a driver (network, logging, secrets).
  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Options
  ]

  @type t :: %__MODULE__{
    :Name => String.t,
    :Options => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end
