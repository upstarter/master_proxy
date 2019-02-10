defmodule <%= @project_name_camel_case %>.<%= @master_proxy_name %>.Plug do
  def init(options) do
    options
  end

  def call(conn, _opts) do
    cond do
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app2_name) %>}) ->
        <%= Macro.camelize(@app2_name) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app1_name) %>}) ->
        <%= Macro.camelize(@app1_name) %>.Endpoint.call(conn, [])
    end
  end
end
