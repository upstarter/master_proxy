defmodule <%= Macro.camelize(@master_proxy_name) %>.Mixfile do
  use Mix.Project
  @name :<%= Macro.underscore(@master_proxy_name) %>
  @version "0.1.0"

  def project do
    [app: :<%= Macro.underscore(@master_proxy_name) %>,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.4.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :cowboy, :plug],
     mod: {<%= @master_proxy_name %>.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    [
      {:plug_cowboy, "~> 2.0.0"},
      {:phoenix, "~> 1.4.0"},
      {:jason, "~> 1.0"},
      {:ex_doc, "~> 0.13", only: :dev},
      {:dialyxir, "~> 0.3", only: :dev},
      {:exvcr, "~> 0.8", only: :test},
    ]
  end
end
