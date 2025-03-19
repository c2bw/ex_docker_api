# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.NetworkCreateResponse do
  @moduledoc """
  OK response to NetworkCreate operation
  """

  @derive Jason.Encoder
  defstruct [
    :Id,
    :Warning
  ]

  @type t :: %__MODULE__{
    :Id => String.t,
    :Warning => String.t
  }

  def decode(value) do
    value
  end
end
