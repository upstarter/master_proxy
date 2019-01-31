defmodule <%= @project_name_camel_case %>.<%= @master_proxy_name %>.Plug do
  def init(options) do
    options
  end

  def call(conn, _opts) do
    cond do
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app5_name) %>}) ->
        <%= Macro.camelize(@app5_name) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app4_name) %>}) ->
        <%= Macro.camelize(@app4_name) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app3_name) %>}) ->
        <%= Macro.camelize(@app3_name) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app2_name) %>}) ->
        <%= Macro.camelize(@app2_name) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app1_name) %>}) ->
        <%= Macro.camelize(@app1_name) %>.Endpoint.call(conn, [])
    end
  end
end
