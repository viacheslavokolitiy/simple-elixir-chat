defmodule ElixirChat.MixFile do
  use Mix.Project

  def project do
    [
      app: :ElixirChat,
      version: "0.0.1",
      elixir: "~> 1.0",
      elixirc_paths: elixirc_paths(Mix.env),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  defp deps do
    [
      {:postgrex, ">= 0.0.0"},
      {:socket, git: "https://github.com/meh/elixir-socket.git"},
      {:http_server, git: "https://github.com/parroty/http_server.git"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]
end
