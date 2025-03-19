# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.SecretSpec do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :Name,
    :Labels,
    :Data,
    :Driver,
    :Templating
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :Data => String.t | nil,
    :Driver => DockerEngineAPI.Model.Driver.t | nil,
    :Templating => DockerEngineAPI.Model.Driver.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Driver, :struct, DockerEngineAPI.Model.Driver)
     |> Deserializer.deserialize(:Templating, :struct, DockerEngineAPI.Model.Driver)
  end
end
