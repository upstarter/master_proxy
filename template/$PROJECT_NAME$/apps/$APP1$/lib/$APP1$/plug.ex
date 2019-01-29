defmodule <%= @project_name_camel_case %>.<%= @app1 %>.Plug do
  def init(options) do
    options
  end

  def call(conn, _opts) do
    cond do
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app5) %>}) ->
        <%= Macro.camelize(@app5) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app4) %>}) ->
        <%= Macro.camelize(@app4) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app3) %>}) ->
        <%= Macro.camelize(@app3) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app2) %>}) ->
        <%= Macro.camelize(@app2) %>.Endpoint.call(conn, [])
      String.match(conn.request_path, ~r{^/<%= Macro.underscore(@app1) %>}) ->
        <%= Macro.camelize(@app1) %>.Endpoint.call(conn, [])
    end
  end
end
