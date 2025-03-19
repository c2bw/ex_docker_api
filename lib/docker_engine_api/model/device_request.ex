# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.DeviceRequest do
  @moduledoc """
  A request for devices to be sent to device drivers
  """

  @derive JSON.Encoder
  defstruct [
    :Driver,
    :Count,
    :DeviceIDs,
    :Capabilities,
    :Options
  ]

  @type t :: %__MODULE__{
    :Driver => String.t | nil,
    :Count => integer() | nil,
    :DeviceIDs => [String.t] | nil,
    :Capabilities => [[String.t]] | nil,
    :Options => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end
