# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ImageInspect do
  @moduledoc """
  Information about an image in the local image cache.
  """

  @derive Jason.Encoder
  defstruct [
    :Id,
    :Descriptor,
    :Manifests,
    :RepoTags,
    :RepoDigests,
    :Parent,
    :Comment,
    :Created,
    :DockerVersion,
    :Author,
    :Config,
    :Architecture,
    :Variant,
    :Os,
    :OsVersion,
    :Size,
    :VirtualSize,
    :GraphDriver,
    :RootFS,
    :Metadata
  ]

  @type t :: %__MODULE__{
    :Id => String.t | nil,
    :Descriptor => DockerEngineAPI.Model.OciDescriptor.t | nil,
    :Manifests => [DockerEngineAPI.Model.ImageManifestSummary.t] | nil,
    :RepoTags => [String.t] | nil,
    :RepoDigests => [String.t] | nil,
    :Parent => String.t | nil,
    :Comment => String.t | nil,
    :Created => String.t | nil,
    :DockerVersion => String.t | nil,
    :Author => String.t | nil,
    :Config => DockerEngineAPI.Model.ImageConfig.t | nil,
    :Architecture => String.t | nil,
    :Variant => String.t | nil,
    :Os => String.t | nil,
    :OsVersion => String.t | nil,
    :Size => integer() | nil,
    :VirtualSize => integer() | nil,
    :GraphDriver => DockerEngineAPI.Model.DriverData.t | nil,
    :RootFS => DockerEngineAPI.Model.ImageInspectRootFs.t | nil,
    :Metadata => DockerEngineAPI.Model.ImageInspectMetadata.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Descriptor, :struct, DockerEngineAPI.Model.OciDescriptor)
     |> Deserializer.deserialize(:Manifests, :list, DockerEngineAPI.Model.ImageManifestSummary)
     |> Deserializer.deserialize(:Config, :struct, DockerEngineAPI.Model.ImageConfig)
     |> Deserializer.deserialize(:GraphDriver, :struct, DockerEngineAPI.Model.DriverData)
     |> Deserializer.deserialize(:RootFS, :struct, DockerEngineAPI.Model.ImageInspectRootFs)
     |> Deserializer.deserialize(:Metadata, :struct, DockerEngineAPI.Model.ImageInspectMetadata)
  end
end
