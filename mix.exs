defmodule ElixirChat.MixFile do
  use Mix.Project

  def project do
    [
      app: :SimpleApp,
      version: "0.0.1",
      elixir: "~> 1.2.5",
      elixirc_paths: elixirc_paths(Mix.env),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [applications: [:postgrex]]
  end

  defp deps do
    [
      {:postgrex, ">=0.11.1"},
      {:socket, git: "https://github.com/meh/elixir-socket.git"},
      {:ecto, "~> 2.0.0-rc.5"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]
end
