defmodule MasterProxy do
  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name: :master_proxy,
    short_desc: "Template for an Umbrella MasterProxy",
    source_dir: "../template",
    based_on: :umbrella,
    options: [
      port: [takes: "port", required: true],
      master_proxy_name: [
        takes: "master-proxy-name",
        to: :master_proxy_name,
        required: true
      ],
      app1: [takes: "app1", to: :app1_name],
      app2: [takes: "app2", to: :app2_name],
      app3: [takes: "app3", to: :app3_name],
      app4: [takes: "app4", to: :app4_name],
      app5: [takes: "app5", to: :app5_name]
    ]
end
