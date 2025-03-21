# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ServiceSpecUpdateConfig do
  @moduledoc """
  Specification for the update strategy of the service.
  """

  @derive JSON.Encoder
  defstruct [
    :Parallelism,
    :Delay,
    :FailureAction,
    :Monitor,
    :MaxFailureRatio,
    :Order
  ]

  @type t :: %__MODULE__{
    :Parallelism => integer() | nil,
    :Delay => integer() | nil,
    :FailureAction => String.t | nil,
    :Monitor => integer() | nil,
    :MaxFailureRatio => float() | nil,
    :Order => String.t | nil
  }

  def decode(value) do
    value
  end
end
