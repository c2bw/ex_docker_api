# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.NetworkCreateRequest do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :Name,
    :Driver,
    :Scope,
    :Internal,
    :Attachable,
    :Ingress,
    :ConfigOnly,
    :ConfigFrom,
    :IPAM,
    :EnableIPv4,
    :EnableIPv6,
    :Options,
    :Labels
  ]

  @type t :: %__MODULE__{
    :Name => String.t,
    :Driver => String.t | nil,
    :Scope => String.t | nil,
    :Internal => boolean() | nil,
    :Attachable => boolean() | nil,
    :Ingress => boolean() | nil,
    :ConfigOnly => boolean() | nil,
    :ConfigFrom => DockerEngineAPI.Model.ConfigReference.t | nil,
    :IPAM => DockerEngineAPI.Model.Ipam.t | nil,
    :EnableIPv4 => boolean() | nil,
    :EnableIPv6 => boolean() | nil,
    :Options => %{optional(String.t) => String.t} | nil,
    :Labels => %{optional(String.t) => String.t} | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ConfigFrom, :struct, DockerEngineAPI.Model.ConfigReference)
     |> Deserializer.deserialize(:IPAM, :struct, DockerEngineAPI.Model.Ipam)
  end
end
