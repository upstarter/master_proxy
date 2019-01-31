defmodule <%= @project_name_camel_case %>.<%= @master_proxy_name %> do
  @moduledoc """
  Proxies requests to Web apps that are part of the platform.
  Useful for Heroku deployment when just one web port is exposed.
  See `MasterProxy.Plug`.
  """
end
