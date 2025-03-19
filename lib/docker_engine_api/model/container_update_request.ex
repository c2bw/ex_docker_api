# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerUpdateRequest do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :CpuShares,
    :Memory,
    :CgroupParent,
    :BlkioWeight,
    :BlkioWeightDevice,
    :BlkioDeviceReadBps,
    :BlkioDeviceWriteBps,
    :BlkioDeviceReadIOps,
    :BlkioDeviceWriteIOps,
    :CpuPeriod,
    :CpuQuota,
    :CpuRealtimePeriod,
    :CpuRealtimeRuntime,
    :CpusetCpus,
    :CpusetMems,
    :Devices,
    :DeviceCgroupRules,
    :DeviceRequests,
    :KernelMemoryTCP,
    :MemoryReservation,
    :MemorySwap,
    :MemorySwappiness,
    :NanoCpus,
    :OomKillDisable,
    :Init,
    :PidsLimit,
    :Ulimits,
    :CpuCount,
    :CpuPercent,
    :IOMaximumIOps,
    :IOMaximumBandwidth,
    :RestartPolicy
  ]

  @type t :: %__MODULE__{
    :CpuShares => integer() | nil,
    :Memory => integer() | nil,
    :CgroupParent => String.t | nil,
    :BlkioWeight => integer() | nil,
    :BlkioWeightDevice => [DockerEngineAPI.Model.ResourcesBlkioWeightDeviceInner.t] | nil,
    :BlkioDeviceReadBps => [DockerEngineAPI.Model.ThrottleDevice.t] | nil,
    :BlkioDeviceWriteBps => [DockerEngineAPI.Model.ThrottleDevice.t] | nil,
    :BlkioDeviceReadIOps => [DockerEngineAPI.Model.ThrottleDevice.t] | nil,
    :BlkioDeviceWriteIOps => [DockerEngineAPI.Model.ThrottleDevice.t] | nil,
    :CpuPeriod => integer() | nil,
    :CpuQuota => integer() | nil,
    :CpuRealtimePeriod => integer() | nil,
    :CpuRealtimeRuntime => integer() | nil,
    :CpusetCpus => String.t | nil,
    :CpusetMems => String.t | nil,
    :Devices => [DockerEngineAPI.Model.DeviceMapping.t] | nil,
    :DeviceCgroupRules => [String.t] | nil,
    :DeviceRequests => [DockerEngineAPI.Model.DeviceRequest.t] | nil,
    :KernelMemoryTCP => integer() | nil,
    :MemoryReservation => integer() | nil,
    :MemorySwap => integer() | nil,
    :MemorySwappiness => integer() | nil,
    :NanoCpus => integer() | nil,
    :OomKillDisable => boolean() | nil,
    :Init => boolean() | nil,
    :PidsLimit => integer() | nil,
    :Ulimits => [DockerEngineAPI.Model.ResourcesUlimitsInner.t] | nil,
    :CpuCount => integer() | nil,
    :CpuPercent => integer() | nil,
    :IOMaximumIOps => integer() | nil,
    :IOMaximumBandwidth => integer() | nil,
    :RestartPolicy => DockerEngineAPI.Model.RestartPolicy.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:BlkioWeightDevice, :list, DockerEngineAPI.Model.ResourcesBlkioWeightDeviceInner)
     |> Deserializer.deserialize(:BlkioDeviceReadBps, :list, DockerEngineAPI.Model.ThrottleDevice)
     |> Deserializer.deserialize(:BlkioDeviceWriteBps, :list, DockerEngineAPI.Model.ThrottleDevice)
     |> Deserializer.deserialize(:BlkioDeviceReadIOps, :list, DockerEngineAPI.Model.ThrottleDevice)
     |> Deserializer.deserialize(:BlkioDeviceWriteIOps, :list, DockerEngineAPI.Model.ThrottleDevice)
     |> Deserializer.deserialize(:Devices, :list, DockerEngineAPI.Model.DeviceMapping)
     |> Deserializer.deserialize(:DeviceRequests, :list, DockerEngineAPI.Model.DeviceRequest)
     |> Deserializer.deserialize(:Ulimits, :list, DockerEngineAPI.Model.ResourcesUlimitsInner)
     |> Deserializer.deserialize(:RestartPolicy, :struct, DockerEngineAPI.Model.RestartPolicy)
  end
end
