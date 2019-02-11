defmodule <%= @app1_name %>Web.Mixfile do
  use Mix.Project

  def project do
    [app: :<%= @app1_name %>,
     version: "0.0.1",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: ">= 1.4.2",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     docs: [main: "readme", extras: ["README.md"]],
     aliases: aliases(),
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {<%= @app1_name %>Web.Application, []},
      extra_applications: []
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:<%= @app1_dep1 %>, <%= @app1_dep1_version %> },
      {:<%= @app1_dep2 %>, <%= @app1_dep2_version %> },
      {:<%= @app1_dep3 %>, <%= @app1_dep3_version %> },
      {:<%= @app1_dep4 %>, <%= @app1_dep4_version %> },
      {:<%= @app1_dep5 %>, <%= @app1_dep5_version %> },

      # in-umbrella dependencies
      {:<%= @app1_udep1 %>, in_umbrella: true},
      {:<%= @app1_udep2 %>, in_umbrella: true},
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    []
  end
end
