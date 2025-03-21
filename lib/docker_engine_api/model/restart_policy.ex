# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.RestartPolicy do
  @moduledoc """
  The behavior to apply when the container exits. The default is not to restart.  An ever increasing delay (double the previous delay, starting at 100ms) is added before each restart to prevent flooding the server.
  """

  @derive JSON.Encoder
  defstruct [
    :Name,
    :MaximumRetryCount
  ]

  @type t :: %__MODULE__{
    :Name => String.t | nil,
    :MaximumRetryCount => integer() | nil
  }

  def decode(value) do
    value
  end
end
