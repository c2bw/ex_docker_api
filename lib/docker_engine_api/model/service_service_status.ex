# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ServiceServiceStatus do
  @moduledoc """
  The status of the service's tasks. Provided only when requested as part of a ServiceList operation.
  """

  @derive Jason.Encoder
  defstruct [
    :RunningTasks,
    :DesiredTasks,
    :CompletedTasks
  ]

  @type t :: %__MODULE__{
    :RunningTasks => integer() | nil,
    :DesiredTasks => integer() | nil,
    :CompletedTasks => integer() | nil
  }

  def decode(value) do
    value
  end
end
