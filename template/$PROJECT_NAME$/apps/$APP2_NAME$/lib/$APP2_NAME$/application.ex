defmodule <%= @app2_name %>.Application do
  @modulefoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(<%= @app2_name %>.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: <%= @app2_name %>.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    <%= @app2_name %>.Endpoint.config_change(changed, removed)
    :ok
  end
end
