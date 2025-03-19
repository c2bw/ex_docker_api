# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Model.TlsInfo do
  @moduledoc """
  Information about the issuer of leaf TLS certificates and the trusted root CA certificate.
  """

  @derive Jason.Encoder
  defstruct [
    :TrustRoot,
    :CertIssuerSubject,
    :CertIssuerPublicKey
  ]

  @type t :: %__MODULE__{
    :TrustRoot => String.t | nil,
    :CertIssuerSubject => String.t | nil,
    :CertIssuerPublicKey => String.t | nil
  }

  def decode(value) do
    value
  end
end
