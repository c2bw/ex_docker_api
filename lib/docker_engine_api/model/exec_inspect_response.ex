# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ExecInspectResponse do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :CanRemove,
    :DetachKeys,
    :ID,
    :Running,
    :ExitCode,
    :ProcessConfig,
    :OpenStdin,
    :OpenStderr,
    :OpenStdout,
    :ContainerID,
    :Pid
  ]

  @type t :: %__MODULE__{
    :CanRemove => boolean() | nil,
    :DetachKeys => String.t | nil,
    :ID => String.t | nil,
    :Running => boolean() | nil,
    :ExitCode => integer() | nil,
    :ProcessConfig => DockerEngineAPI.Model.ProcessConfig.t | nil,
    :OpenStdin => boolean() | nil,
    :OpenStderr => boolean() | nil,
    :OpenStdout => boolean() | nil,
    :ContainerID => String.t | nil,
    :Pid => integer() | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ProcessConfig, :struct, DockerEngineAPI.Model.ProcessConfig)
  end
end
