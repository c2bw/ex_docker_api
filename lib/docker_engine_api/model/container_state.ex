# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerState do
  @moduledoc """
  ContainerState stores container's running state. It's part of ContainerJSONBase and will be returned by the \"inspect\" command.
  """

  @derive Jason.Encoder
  defstruct [
    :Status,
    :Running,
    :Paused,
    :Restarting,
    :OOMKilled,
    :Dead,
    :Pid,
    :ExitCode,
    :Error,
    :StartedAt,
    :FinishedAt,
    :Health
  ]

  @type t :: %__MODULE__{
    :Status => String.t | nil,
    :Running => boolean() | nil,
    :Paused => boolean() | nil,
    :Restarting => boolean() | nil,
    :OOMKilled => boolean() | nil,
    :Dead => boolean() | nil,
    :Pid => integer() | nil,
    :ExitCode => integer() | nil,
    :Error => String.t | nil,
    :StartedAt => String.t | nil,
    :FinishedAt => String.t | nil,
    :Health => DockerEngineAPI.Model.Health.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Health, :struct, DockerEngineAPI.Model.Health)
  end
end
