use Mix.Config

config :<%= @project_name %>, port: <%= @port %>

import_config "#{Mix.env()}.exs"


# config :kazan, :server, {:kubeconfig, "path/to/file"}
