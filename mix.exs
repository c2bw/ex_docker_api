defmodule DockerEngineAPI.Mixfile do
  use Mix.Project

  @version "1.48.0"
  @url "https://github.com/c2bw/ex_docker_api"

  def(project) do
    [
      app: :ex_docker_api,
      version: @version,
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      description: "Docker Engine API client for Elixir."
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.37.3", only: :dev, runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:tesla, "~> 1.14.1"},
      {:jason, "~> 1.4"}
    ]
  end

  defp package do
    [
      name: "ex_docker_api",
      source_url: @url,
      files: ~w(.formatter.exs lib mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => @url}
    ]
  end

  defp docs do
    [
      main: "readme",
      name: "ex_docker_api",
      canonical: "http://hexdocs.pm/ex_docker_api",
      source_url: @url,
      extras: ["README.md", "LICENSE"]
    ]
  end
end
