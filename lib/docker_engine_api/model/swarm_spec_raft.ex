# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SwarmSpecRaft do
  @moduledoc """
  Raft configuration.
  """

  @derive JSON.Encoder
  defstruct [
    :SnapshotInterval,
    :KeepOldSnapshots,
    :LogEntriesForSlowFollowers,
    :ElectionTick,
    :HeartbeatTick
  ]

  @type t :: %__MODULE__{
    :SnapshotInterval => integer() | nil,
    :KeepOldSnapshots => integer() | nil,
    :LogEntriesForSlowFollowers => integer() | nil,
    :ElectionTick => integer() | nil,
    :HeartbeatTick => integer() | nil
  }

  def decode(value) do
    value
  end
end
