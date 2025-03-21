# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.PluginsInfo do
  @moduledoc """
  Available plugins per type.  <p><br /></p>  > **Note**: Only unmanaged (V1) plugins are included in this list. > V1 plugins are \"lazily\" loaded, and are not returned in this list > if there is no resource using the plugin.
  """

  @derive JSON.Encoder
  defstruct [
    :Volume,
    :Network,
    :Authorization,
    :Log
  ]

  @type t :: %__MODULE__{
    :Volume => [String.t] | nil,
    :Network => [String.t] | nil,
    :Authorization => [String.t] | nil,
    :Log => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
