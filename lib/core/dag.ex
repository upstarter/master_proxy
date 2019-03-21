# highly decoupled, graph theory only, should rarely be touched
defmodule MasterProxy.Core.Dag do
  # valid if it has a single root with no cycles
  def validate(graph) do
  end

  # walks the graph, calling your callback as each node is visited
  def walk(walk_fn) do
  end
end
