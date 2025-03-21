# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ClusterVolumeSpec do
  @moduledoc """
  Cluster-specific options used to create the volume.
  """

  @derive JSON.Encoder
  defstruct [
    :Group,
    :AccessMode
  ]

  @type t :: %__MODULE__{
    :Group => String.t | nil,
    :AccessMode => DockerEngineAPI.Model.ClusterVolumeSpecAccessMode.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:AccessMode, :struct, DockerEngineAPI.Model.ClusterVolumeSpecAccessMode)
  end
end
