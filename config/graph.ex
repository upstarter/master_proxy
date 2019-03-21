# builds initial DAG from file config read and interpreted by ConfigAgent
# passes graph to MasterProxy.Core.Dag which then passes graph to ConfigTransformer – first in chain of
# transformations
defmodule MasterProxy.BootStrap.Graph do
  import MasterProxy.BootStrap.ConfigAgent
  alias MasterProxy.BootStrap.ConfigAgent

  def init(cfg) do
    IO.puts("#{cfg["name"]}")
  end

  def main do
    inspect(ConfigAgent)
  end

  def build_graph do
    graph = Graph.new()
    # for each config resource
    # build vertex
  end
end
