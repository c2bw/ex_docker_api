# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerNetworkStats do
  @moduledoc """
  Aggregates the network stats of one container
  """

  @derive Jason.Encoder
  defstruct [
    :rx_bytes,
    :rx_packets,
    :rx_errors,
    :rx_dropped,
    :tx_bytes,
    :tx_packets,
    :tx_errors,
    :tx_dropped,
    :endpoint_id,
    :instance_id
  ]

  @type t :: %__MODULE__{
    :rx_bytes => integer() | nil,
    :rx_packets => integer() | nil,
    :rx_errors => integer() | nil,
    :rx_dropped => integer() | nil,
    :tx_bytes => integer() | nil,
    :tx_packets => integer() | nil,
    :tx_errors => integer() | nil,
    :tx_dropped => integer() | nil,
    :endpoint_id => String.t | nil,
    :instance_id => String.t | nil
  }

  def decode(value) do
    value
  end
end
