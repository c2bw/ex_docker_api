# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ConfigSpec do
  @moduledoc """

  """

  @derive JSON.Encoder
  defstruct [
    :Name,
    :Labels,
    :Data,
    :Templating
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :Labels => %{optional(String.t) => String.t} | nil,
    :Data => String.t | nil,
    :Templating => DockerEngineAPI.Model.Driver.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Templating, :struct, DockerEngineAPI.Model.Driver)
  end
end
