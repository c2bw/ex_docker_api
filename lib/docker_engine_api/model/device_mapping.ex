# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.DeviceMapping do
  @moduledoc """
  A device mapping between the host and container
  """

  @derive JSON.Encoder
  defstruct [
    :PathOnHost,
    :PathInContainer,
    :CgroupPermissions
  ]

  @type t :: %__MODULE__{
    :PathOnHost => String.t | nil,
    :PathInContainer => String.t | nil,
    :CgroupPermissions => String.t | nil
  }

  def decode(value) do
    value
  end
end
