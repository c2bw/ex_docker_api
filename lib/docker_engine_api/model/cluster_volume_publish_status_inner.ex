# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ClusterVolumePublishStatusInner do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :NodeID,
    :State,
    :PublishContext
  ]

  @type t :: %__MODULE__{
    :NodeID => String.t | nil,
    :State => String.t | nil,
    :PublishContext => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end
