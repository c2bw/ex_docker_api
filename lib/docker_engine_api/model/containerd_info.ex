# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerdInfo do
  @moduledoc """
  Information for connecting to the containerd instance that is used by the daemon. This is included for debugging purposes only.
  """

  @derive JSON.Encoder
  defstruct [
    :Address,
    :Namespaces
  ]

  @type t :: %__MODULE__{
    :Address => String.t | nil,
    :Namespaces => DockerEngineAPI.Model.ContainerdInfoNamespaces.t | nil
  }

  alias DockerEngineAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:Namespaces, :struct, DockerEngineAPI.Model.ContainerdInfoNamespaces)
  end
end
