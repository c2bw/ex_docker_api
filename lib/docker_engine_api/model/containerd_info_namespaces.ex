# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ContainerdInfoNamespaces do
  @moduledoc """
  The namespaces that the daemon uses for running containers and plugins in containerd. These namespaces can be configured in the daemon configuration, and are considered to be used exclusively by the daemon, Tampering with the containerd instance may cause unexpected behavior.  As these namespaces are considered to be exclusively accessed by the daemon, it is not recommended to change these values, or to change them to a value that is used by other systems, such as cri-containerd.
  """

  @derive JSON.Encoder
  defstruct [
    :Containers,
    :Plugins
  ]

  @type t :: %__MODULE__{
    :Containers => String.t | nil,
    :Plugins => String.t | nil
  }

  def decode(value) do
    value
  end
end
