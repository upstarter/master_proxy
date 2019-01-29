defmodule MasterProxy do
  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name: :master_proxy,
    short_desc: "Template for an Umbrella MasterProxy",
    source_dir: "../template",
    based_on: :umbrella,
    options: [
      port: [takes: "port", required: true],
      app1: [takes: "app1", required: true],
      app2: [takes: "app2", required: true]
    ]
end
