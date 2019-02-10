use Mix.Config

config :<%= Macro.underscore(@app2_name) %>, port: <%= @port %>

import_config "#{Mix.env()}.exs"

# config :kazan, :server, {:kubeconfig, "path/to/file"}
