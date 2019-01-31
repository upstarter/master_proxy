use Mix.Config

config :<%= @project_name %>, port: <%= @port %>

import_config "#{Mix.env()}.exs"
