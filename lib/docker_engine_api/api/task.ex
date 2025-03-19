# NOTE: This file is auto generated by OpenAPI Generator 7.12.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule DockerEngineAPI.Api.Task do
  @moduledoc """
  API calls for all endpoints tagged `Task`.
  """

  alias DockerEngineAPI.Connection
  import DockerEngineAPI.RequestBuilder

  @doc """
  Inspect a task

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `id` (String.t): ID of the task
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, DockerEngineAPI.Model.Task.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec task_inspect(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.Task.t} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def task_inspect(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/tasks/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.Task},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse},
      {503, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  List tasks

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:filters` (String.t): A JSON encoded value of the filters (a `map[string][]string`) to process on the tasks list.  Available filters:  - `desired-state=(running | shutdown | accepted)` - `id=<task id>` - `label=key` or `label=\"key=value\"` - `name=<task name>` - `node=<node id or name>` - `service=<service name>` 

  ### Returns

  - `{:ok, [%Task{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec task_list(Tesla.Env.client, keyword()) :: {:ok, [DockerEngineAPI.Model.Task.t]} | {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:error, Tesla.Env.t}
  def task_list(connection, opts \\ []) do
    optional_params = %{
      :filters => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/tasks")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, DockerEngineAPI.Model.Task},
      {500, DockerEngineAPI.Model.ErrorResponse},
      {503, DockerEngineAPI.Model.ErrorResponse}
    ])
  end

  @doc """
  Get task logs
  Get `stdout` and `stderr` logs from a task. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 

  ### Parameters

  - `connection` (DockerEngineAPI.Connection): Connection to server
  - `id` (String.t): ID of the task
  - `opts` (keyword): Optional parameters
    - `:details` (boolean()): Show task context and extra details provided to logs.
    - `:follow` (boolean()): Keep connection after returning logs.
    - `:stdout` (boolean()): Return logs from `stdout`
    - `:stderr` (boolean()): Return logs from `stderr`
    - `:since` (integer()): Only return logs since this time, as a UNIX timestamp
    - `:timestamps` (boolean()): Add timestamps to every log line
    - `:tail` (String.t): Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines. 

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec task_logs(Tesla.Env.client, String.t, keyword()) :: {:ok, DockerEngineAPI.Model.ErrorResponse.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def task_logs(connection, id, opts \\ []) do
    optional_params = %{
      :details => :query,
      :follow => :query,
      :stdout => :query,
      :stderr => :query,
      :since => :query,
      :timestamps => :query,
      :tail => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/tasks/#{id}/logs")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {404, DockerEngineAPI.Model.ErrorResponse},
      {500, DockerEngineAPI.Model.ErrorResponse},
      {503, DockerEngineAPI.Model.ErrorResponse}
    ])
  end
end
