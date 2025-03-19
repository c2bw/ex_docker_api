# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.IdResponse do
  @moduledoc """
  Response to an API call that returns just an Id
  """

  @derive Jason.Encoder
  defstruct [
    :Id
  ]

  @type t :: %__MODULE__{
    :Id => String.t
  }

  def decode(value) do
    value
  end
end
