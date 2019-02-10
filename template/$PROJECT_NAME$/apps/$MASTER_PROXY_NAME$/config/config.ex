use Mix.Config

config :<%= Macro.underscore(@master_proxy_name) %>, port: <%= @port %>

import_config "#{Mix.env()}.exs"

# config :kazan, :server, {:kubeconfig, "path/to/file"}
