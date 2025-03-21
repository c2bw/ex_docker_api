# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.IndexInfo do
  @moduledoc """
  IndexInfo contains information about a registry.
  """

  @derive JSON.Encoder
  defstruct [
    :Name,
    :Mirrors,
    :Secure,
    :Official
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :Mirrors => [String.t] | nil,
    :Secure => boolean() | nil,
    :Official => boolean() | nil
  }

  def decode(value) do
    value
  end
end
