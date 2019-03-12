defmodule MasterProxy.BootStrap.Configurator do
  import MasterProxy.ConfigAgent
  alias MasterProxy.ConfigAgent

  def init(cfg) do
    IO.puts("Hello, my name is #{cfg["name"]}")
  end

  def main do
    inspect(ConfigAgent)
  end
end
