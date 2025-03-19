# ex_docker_api [![Hex Version](https://img.shields.io/hexpm/v/ex_docker_api.svg)](https://hex.pm/packages/ex_docker_api) [![Hex Docs](https://img.shields.io/badge/docs-hexpm-blue.svg)](https://hexdocs.pm/ex_docker_api/)

**Elixir client for Docker Engine API.**

The Engine API is an HTTP API served by Docker Engine. It is the API the Docker client uses to communicate with the Engine, so everything the Docker client can do can be done with the API.

_Most of the client's commands map directly to API endpoints (e.g. `docker ps` is `GET /containers/json`). The notable exception is running containers, which consists of several API calls._

## Installation

The package can be installed by adding `ex_docker_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_docker_api, "~> 1.48"}]
end
```

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :ex_docker_api, base_url: "http://localhost/v1.48"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`DockerEngineAPI.Connection.new/1`:

```elixir
client = DockerEngineAPI.Connection.new(base_url: "http://localhost/v1.48")
```

A custom `timeout` can be set:
```elixir
# when calling `DockerEngineAPI.Connection.new/1`
client = DockerEngineAPI.Connection.new(timeout: 50_000)
# in the configuration file (example: runtime.exs)
config :ex_docker_api, timeout: 50_000
```

Additional middleware can be set in the compile-time or runtime configuration:
```elixir  
config :tesla, DockerEngineAPI.Connection, adapter: {Tesla.Adapter.Hackney, recv_timeout: 50_000}
```

***NOTE: remember to add the adapter to your dependencies in mix.exs***

## Usage
 
### Errors

The API uses standard HTTP status codes to indicate the success or failure of the API call.
  

### Versioning

The API is usually changed in each release, so API calls are versioned to ensure that clients don't break. To lock to a specific version of the API, you prefix the URL with its version. For example, call `/v1.30/info` to use the v1.30 version of the `/info` endpoint. If the API version specified in the URL is not supported by the daemon, a HTTP `400 Bad Request` error message is returned. If you omit the version-prefix, the current version of the API (v1.48) is used. For example, calling `/info` is the same as calling `/v1.48/info`. Using the API without a version-prefix is deprecated and will be removed in a future release.

Engine releases in the near future should support this version of the API, so your client will continue to work even if it is talking to a newer Engine. The API uses an open schema model, which means the server may add extra properties to responses. Likewise, the server will ignore any extra query parameters and request body properties. When you write clients, you need to ignore additional properties in responses to ensure they do not break when talking to newer daemons.

### Authentication

Authentication for registries is handled client side. The client has to send authentication details to various endpoints that need to communicate with registries, such as `POST /images/(name)/push`. These are sent as `X-Registry-Auth` header as a [base64url encoded](https://tools.ietf.org/html/rfc4648#section-5) (JSON) string with the following structure:

```json
{
  "username": "string",
  "password": "string",
  "email": "string",
  "serveraddress": "string"
}
```

The `serveraddress` is a domain/IP without a protocol. Throughout this structure, double quotes are required.
If you have already got an identity token from the `/auth` endpoint, you can just pass this instead of credentials:

```json
{
  "identitytoken": "9cbaf023786cd7..."
}
```


## Credits

This library was generated using `Docker Engine API` [`v1.48`](https://docs.docker.com/reference/api/engine/version/v1.48/) 
and [`OpenAPI Generator`](https://github.com/OpenAPITools/openapi-generator)