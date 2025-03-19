# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.ImageManifestSummaryAttestationData do
  @moduledoc """
  The image data for the attestation manifest. This field is only populated when Kind is \"attestation\".
  """

  @derive Jason.Encoder
  defstruct [
    :For
  ]

  @type t :: %__MODULE__{
    :For => String.t
  }

  def decode(value) do
    value
  end
end
