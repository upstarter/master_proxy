defmodule <%= @project_name_camel_case %>.<%= Macro.camelize(@master_proxy_name) %>.Application do

  alias <%= Macro.camelize(@app1_name) %>.Endpoint, as: <%= Macro.camelize(@app1_name) %>Endpoint
  alias <%= Macro.camelize(@app2_name) %>.Endpoint,   as: <%= Macro.camelize(@app2_name) %>Endpoint

  alias <%= Macro.camelize(@app1_name) %>.UserSocket, as: <%= Macro.camelize(@app1_name) %>UserSocket
  alias <%= Macro.camelize(@app2_name) %>.UserSocket, as: <%= Macro.camelize(@app2_name) %>UserSocket

  alias Phoenix.LiveReloader.Socket,  as: LiveReloadSocket
  alias Plug.Cowboy

  use Application

  require Logger

  @port Application.get_env(:<%= @project_name %>, :port)

  def start(_type, _args) do
    {:ok, pid} = in_phoenix?() |> children |> run_application()
    Logger.info("successfully started <%= @project_name %> on port #{to_port(@port)}")
    {:ok, pid}
  end

  defp run_application(children) do
    import Supervisor.Spec, warn: false
    Supervisor.start_link(
      children,
      [strategy: :one_for_one, name: MasterProxy.Supervisor]
    )
  end

  defp children(_start_cowboy = false), do: []
  defp children(_start_cowboy = true) do
    [
      Cowboy.child_spec(
        plug: nil, # since we're using manual dispatch, plug is ignored
        scheme: :http,
        options: [
          port: to_port(@port),
          dispatch: [{:_, [
            websocket_handler("/<%= Macro.underscore(@app1_name) %>/live_reload/socket/websocket", <%= Macro.camelize(@app1_name) %>Endpoint, {LiveReloadSocket, :websocket}),
            websocket_handler("/<%= Macro.underscore(@app2_name) %>/live_reload/socket/websocket", <%= Macro.camelize(@app2_name) %>Endpoint, {LiveReloadSocket, :websocket}),
            websocket_handler("/<%= Macro.underscore(@app1_name) %>/socket/websocket", <%= Macro.camelize(@app1_name) %>Endpoint, {<%= Macro.camelize(@app1_name) %>UserSocket, websocket: true}),
            websocket_handler("/<%= Macro.underscore(@app2_name) %>/socket/websocket", <%= Macro.camelize(@app2_name) %>Endpoint, {<%= Macro.camelize(@app2_name) %>UserSocket, websocket: true}),
            {:_, Cowboy.Handler, {<%= @project_name_camel_case %>.Plug, []}}
          ]}]
        ]
      )
    ]
  end

  defp websocket_handler(path, endpoint, options) do
    {path, Phoenix.Endpoint.Cowboy2Handler, {endpoint, options}}
  end

  # we only want the proxy to start when phoenix is started as well
  # (not in iex or tests)
  defp in_phoenix? do
    Application.get_env(:phoenix, :serve_endpoints)
  end

  defp to_port(nil) do
    Logger.error "Server can't start because :port in config is nil, please use a valid port number"
    exit(:shutdown)
  end
  defp to_port(binary)  when is_binary(binary),   do: String.to_integer(binary)
  defp to_port(integer) when is_integer(integer), do: integer
  defp to_port({:system, env_var}), do: to_port(System.get_env(env_var))

end
