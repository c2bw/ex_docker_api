# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerWaitExitError do
  @moduledoc """
  container waiting error, if any
  """

  @derive JSON.Encoder
  defstruct [
    :Message
  ]

  @type t :: %__MODULE__{
    :Message => String.t | nil
  }

  def decode(value) do
    value
  end
end
