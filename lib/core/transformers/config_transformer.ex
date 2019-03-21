# first in chain post configurator, takes as input an empty graph and structs in
# memory representing user specifications from configurator
# produces a graph, nodes for resources and providers, draws relationships for
# nodes that reference eachother, providers are just dangling unconnected at
# this stage
defmodule MasterProxy.Core.Transformers.ConfigTransformer do
  def call(dag, specs) do
  end
end
