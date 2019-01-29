use Mix.Config

config :<%= Macro.underscore(@app1) %>, port: <%= @port %>

import_config "#{Mix.env()}.exs"

# config :kazan, :server, {:kubeconfig, "path/to/file"}
