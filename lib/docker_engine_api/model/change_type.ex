# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ChangeType do
  @moduledoc """
  Kind of change  Can be one of:  - `0`: Modified (\"C\") - `1`: Added (\"A\") - `2`: Deleted (\"D\")
  """

  @derive JSON.Encoder
  defstruct [

  ]

  @type t :: %__MODULE__{

  }

  def decode(value) do
    value
  end
end
