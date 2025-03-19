# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TaskSpecContainerSpecConfigsInner do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :File,
    :Runtime,
    :ConfigID,
    :ConfigName
  ]

  @type t :: %__MODULE__{
    :File => DockerEngineAPI.Model.TaskSpecContainerSpecConfigsInnerFile.t | nil,
    :Runtime => map() | nil,
    :ConfigID => String.t | nil,
    :ConfigName => String.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:File, :struct, DockerEngineAPI.Model.TaskSpecContainerSpecConfigsInnerFile)
  end
end
