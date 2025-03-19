# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PeerNode do
  @moduledoc """
  Represents a peer-node in the swarm
  """

  @derive Jason.Encoder
  defstruct [
    :NodeID,
    :Addr
  ]

  @type t :: %__MODULE__{
    :NodeID => String.t | nil,
    :Addr => String.t | nil
  }

  def decode(value) do
    value
  end
end
