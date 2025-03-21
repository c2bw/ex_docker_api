# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Node do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :ID,
    :Version,
    :CreatedAt,
    :UpdatedAt,
    :Spec,
    :Description,
    :Status,
    :ManagerStatus
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Version => DockerEngineAPI.Model.ObjectVersion.t | nil,
    :CreatedAt => String.t | nil,
    :UpdatedAt => String.t | nil,
    :Spec => DockerEngineAPI.Model.NodeSpec.t | nil,
    :Description => DockerEngineAPI.Model.NodeDescription.t | nil,
    :Status => DockerEngineAPI.Model.NodeStatus.t | nil,
    :ManagerStatus => DockerEngineAPI.Model.ManagerStatus.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Version, :struct, DockerEngineAPI.Model.ObjectVersion)
     |> Deserializer.deserialize(:Spec, :struct, DockerEngineAPI.Model.NodeSpec)
     |> Deserializer.deserialize(:Description, :struct, DockerEngineAPI.Model.NodeDescription)
     |> Deserializer.deserialize(:Status, :struct, DockerEngineAPI.Model.NodeStatus)
     |> Deserializer.deserialize(:ManagerStatus, :struct, DockerEngineAPI.Model.ManagerStatus)
  end
end
