defmodule MasterProxy do
  @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

  use MixTemplates,
    name: :master_proxy,
    short_desc: "Template for an Umbrella MasterProxy",
    source_dir: "../template",
    based_on: :umbrella,
    options: [
      port: [takes: "port", required: true],
      app1: [takes: "app1"],
      app2: [takes: "app2"],
      app3: [takes: "app3"],
      app4: [takes: "app4"],
      app5: [takes: "app5"]
    ]
end
