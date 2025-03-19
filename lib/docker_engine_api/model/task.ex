# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.Task do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :ID,
    :Version,
    :CreatedAt,
    :UpdatedAt,
    :Name,
    :Labels,
    :Spec,
    :ServiceID,
    :Slot,
    :NodeID,
    :AssignedGenericResources,
    :Status,
    :DesiredState,
    :JobIteration
  ]

  @type t :: %__MODULE__{
    :ID => String.t | nil,
    :Version => DockerEngineAPI.Model.ObjectVersion.t | nil,
    :CreatedAt => String.t | nil,
    :UpdatedAt => String.t | nil,
    :Name => String.t | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :Spec => DockerEngineAPI.Model.TaskSpec.t | nil,
    :ServiceID => String.t | nil,
    :Slot => integer() | nil,
    :NodeID => String.t | nil,
    :AssignedGenericResources => [DockerEngineAPI.Model.GenericResourcesInner.t] | nil,
    :Status => DockerEngineAPI.Model.TaskStatus.t | nil,
    :DesiredState => DockerEngineAPI.Model.TaskState.t | nil,
    :JobIteration => DockerEngineAPI.Model.ObjectVersion.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Version, :struct, DockerEngineAPI.Model.ObjectVersion)
     |> Deserializer.deserialize(:Spec, :struct, DockerEngineAPI.Model.TaskSpec)
     |> Deserializer.deserialize(:AssignedGenericResources, :list, DockerEngineAPI.Model.GenericResourcesInner)
     |> Deserializer.deserialize(:Status, :struct, DockerEngineAPI.Model.TaskStatus)
     |> Deserializer.deserialize(:DesiredState, :struct, DockerEngineAPI.Model.TaskState)
     |> Deserializer.deserialize(:JobIteration, :struct, DockerEngineAPI.Model.ObjectVersion)
  end
end
