defmodule <%= @project_name_camel_case %>.Mixfile do
  use Mix.Project
  @name    :<%= @project_name %>
  @version "0.1.0"

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      # Docs
      name: "<%= @project_name_camel_case %>",
      source_url: "https://github.com/USER/PROJECT",
      homepage_url: "http://YOUR_PROJECT_HOMEPAGE",
      docs: [
        main: "Platform",
        extras: ["README.md"]
      ]
    ]
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
      {:plug, git: "git://github.com/elixir-lang/plug.git"},
      {:ex_doc, "~> 0.13", only: :dev},
      {:dialyxir, "~> 0.3", only: :dev},
      {:exvcr, "~> 0.8", only: :test},
      {:jason, "~> 1.0"}
    ]
  end
end
