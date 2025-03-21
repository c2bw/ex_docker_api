# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ServiceUpdateStatus do
  @moduledoc """
  The status of a service update.
  """

  @derive JSON.Encoder
  defstruct [
    :State,
    :StartedAt,
    :CompletedAt,
    :Message
  ]

  @type t :: %__MODULE__{
    :State => String.t | nil,
    :StartedAt => String.t | nil,
    :CompletedAt => String.t | nil,
    :Message => String.t | nil
  }

  def decode(value) do
    value
  end
end
