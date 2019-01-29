defmodule MasterProxy.Mixfile do
  use Mix.Project

  # ------------------------------------------------------------

  @name :master_proxy
  @version "0.1.0"

  @deps [
    {:mix_templates, ">0.0.0", app: false},
    {:ex_doc, ">0.0.0", only: [:dev, :test]}
  ]

  @maintainers ["Eric Steen <ericsteen1@gmail.com>"]
  @github "https://github.com/ericsteen/#{@name}"

  @description """
  What your template does (less than 300 characters)
  """

  # ------------------------------------------------------------

  def project do
    in_production = Mix.env() == :prod

    [
      apps_path: "apps",
      app: @name,
      version: @version,
      deps: @deps,
      elixir: "~> 1.4",
      package: package(),
      description: @description,
      build_embedded: in_production,
      start_permanent: in_production
    ]
  end

  defp package do
    [
      name: @name,
      files: ["lib", "mix.exs", "README.md", "LICENSE.md", "template"],
      maintainers: @maintainers,
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => @github
      }
    ]
  end
end
