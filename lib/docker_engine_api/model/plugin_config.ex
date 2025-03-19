# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PluginConfig do
  @moduledoc """
  The config of a plugin.
  """

  @derive Jason.Encoder
  defstruct [
    :DockerVersion,
    :Description,
    :Documentation,
    :Interface,
    :Entrypoint,
    :WorkDir,
    :User,
    :Network,
    :Linux,
    :PropagatedMount,
    :IpcHost,
    :PidHost,
    :Mounts,
    :Env,
    :Args,
    :rootfs
  ]

  @type t :: %__MODULE__{
    :DockerVersion => String.t | nil,
    :Description => String.t,
    :Documentation => String.t,
    :Interface => DockerEngineAPI.Model.PluginConfigInterface.t,
    :Entrypoint => [String.t],
    :WorkDir => String.t,
    :User => DockerEngineAPI.Model.PluginConfigUser.t | nil,
    :Network => DockerEngineAPI.Model.PluginConfigNetwork.t,
    :Linux => DockerEngineAPI.Model.PluginConfigLinux.t,
    :PropagatedMount => String.t,
    :IpcHost => boolean(),
    :PidHost => boolean(),
    :Mounts => [DockerEngineAPI.Model.PluginMount.t],
    :Env => [DockerEngineAPI.Model.PluginEnv.t],
    :Args => DockerEngineAPI.Model.PluginConfigArgs.t,
    :rootfs => DockerEngineAPI.Model.PluginConfigRootfs.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Interface, :struct, DockerEngineAPI.Model.PluginConfigInterface)
     |> Deserializer.deserialize(:User, :struct, DockerEngineAPI.Model.PluginConfigUser)
     |> Deserializer.deserialize(:Network, :struct, DockerEngineAPI.Model.PluginConfigNetwork)
     |> Deserializer.deserialize(:Linux, :struct, DockerEngineAPI.Model.PluginConfigLinux)
     |> Deserializer.deserialize(:Mounts, :list, DockerEngineAPI.Model.PluginMount)
     |> Deserializer.deserialize(:Env, :list, DockerEngineAPI.Model.PluginEnv)
     |> Deserializer.deserialize(:Args, :struct, DockerEngineAPI.Model.PluginConfigArgs)
     |> Deserializer.deserialize(:rootfs, :struct, DockerEngineAPI.Model.PluginConfigRootfs)
  end
end
