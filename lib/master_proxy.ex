defmodule MasterProxy do
  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name: :master_proxy,
    short_desc: "Template for an Umbrella MasterProxy Service Mesh Node",
    source_dir: "../template",
    based_on: :umbrella

  def options do
    [
      port: [takes: "port", required: true],
      master_proxy_name: [
        takes: "master-proxy-name",
        to: :master_proxy_name
      ],
      app1: [takes: "app1", to: :app1_name],
      app2: [takes: "app2", to: :app2_name]
    ]
  end
end
