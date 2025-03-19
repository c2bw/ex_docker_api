# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerStatsResponse do
  @moduledoc """
  Statistics sample for a container.
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :id,
    :read,
    :preread,
    :pids_stats,
    :blkio_stats,
    :num_procs,
    :storage_stats,
    :cpu_stats,
    :precpu_stats,
    :memory_stats,
    :networks
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :id => String.t | nil,
    :read => DateTime.t | nil,
    :preread => DateTime.t | nil,
    :pids_stats => DockerEngineAPI.Model.ContainerPidsStats.t | nil,
    :blkio_stats => DockerEngineAPI.Model.ContainerBlkioStats.t | nil,
    :num_procs => integer() | nil,
    :storage_stats => DockerEngineAPI.Model.ContainerStorageStats.t | nil,
    :cpu_stats => DockerEngineAPI.Model.ContainerCpuStats.t | nil,
    :precpu_stats => DockerEngineAPI.Model.ContainerCpuStats.t | nil,
    :memory_stats => DockerEngineAPI.Model.ContainerMemoryStats.t | nil,
    :networks => map() | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:read, :datetime, nil)
     |> Deserializer.deserialize(:preread, :datetime, nil)
     |> Deserializer.deserialize(:pids_stats, :struct, DockerEngineAPI.Model.ContainerPidsStats)
     |> Deserializer.deserialize(:blkio_stats, :struct, DockerEngineAPI.Model.ContainerBlkioStats)
     |> Deserializer.deserialize(:storage_stats, :struct, DockerEngineAPI.Model.ContainerStorageStats)
     |> Deserializer.deserialize(:cpu_stats, :struct, DockerEngineAPI.Model.ContainerCpuStats)
     |> Deserializer.deserialize(:precpu_stats, :struct, DockerEngineAPI.Model.ContainerCpuStats)
     |> Deserializer.deserialize(:memory_stats, :struct, DockerEngineAPI.Model.ContainerMemoryStats)
  end
end
