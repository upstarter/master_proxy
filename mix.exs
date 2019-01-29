defmodule MasterProxy.Mixfile do
  use Mix.Project

  # ------------------------------------------------------------

  @name :master_proxy
  @version "0.1.0"

  @deps [
    {:mix_templates, ">0.0.0", app: false, git: "https://github.com/ericsteen/mix_templates"},
    {:ex_doc, ">0.0.0", only: [:dev, :test]}
  ]

  @maintainers ["Eric Steen <ericsteen1@gmail.com>"]
  @github "https://github.com/ericsteen/#{@name}"

  @description """
  Generate a mix umbrella project that proxies web requests on a single port to multiple apps underneath the umbrella.

  The aim of this project is to create a code generation schematic for specialized high-performance umbrella clusters.

  Create a Pull Request or join the discussion on the [slack channel](https://join.slack.com/t/masterproxy/shared_invite/enQtNTQxNDYxMjM1MTI3LTM1Y2U3OTZkZTI5ZTlhZThiMjJhYTVjYTdiM2QzMTIzZjYyZjY5MDQ0NzU3MWI0OTVjZDc0NjMwNmE4NDcxNGQ). For context see the [acme_bank](https://github.com/wojtekmach/acme_bank) example.
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
