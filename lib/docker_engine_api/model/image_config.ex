# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ImageConfig do
  @moduledoc """
  Configuration of the image. These fields are used as defaults when starting a container from the image.
  """

  @derive JSON.Encoder
  defstruct [
    :Hostname,
    :Domainname,
    :User,
    :AttachStdin,
    :AttachStdout,
    :AttachStderr,
    :ExposedPorts,
    :Tty,
    :OpenStdin,
    :StdinOnce,
    :Env,
    :Cmd,
    :Healthcheck,
    :ArgsEscaped,
    :Image,
    :Volumes,
    :WorkingDir,
    :Entrypoint,
    :NetworkDisabled,
    :MacAddress,
    :OnBuild,
    :Labels,
    :StopSignal,
    :StopTimeout,
    :Shell
  ]

  @type t :: %__MODULE__{
    :Hostname => String.t | nil,
    :Domainname => String.t | nil,
    :User => String.t | nil,
    :AttachStdin => boolean() | nil,
    :AttachStdout => boolean() | nil,
    :AttachStderr => boolean() | nil,
    :ExposedPorts => %{optional(String.t) => map()} | nil,
    :Tty => boolean() | nil,
    :OpenStdin => boolean() | nil,
    :StdinOnce => boolean() | nil,
    :Env => [String.t] | nil,
    :Cmd => [String.t] | nil,
    :Healthcheck => DockerEngineAPI.Model.HealthConfig.t | nil,
    :ArgsEscaped => boolean() | nil,
    :Image => String.t | nil,
    :Volumes => %{optional(String.t) => map()} | nil,
    :WorkingDir => String.t | nil,
    :Entrypoint => [String.t] | nil,
    :NetworkDisabled => boolean() | nil,
    :MacAddress => String.t | nil,
    :OnBuild => [String.t] | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :StopSignal => String.t | nil,
    :StopTimeout => integer() | nil,
    :Shell => [String.t] | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Healthcheck, :struct, DockerEngineAPI.Model.HealthConfig)
  end
end
