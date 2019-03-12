defmodule MasterProxy.BootStrap.ConfigAgent do
  use Agent

  def start(src) do
    src
    |> load_config
  end

  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  def get(pid, key) do
    Agent.get(pid, fn state -> Map.get(state, key) end)
  end

  def put(pid, key, value) do
    Agent.update(pid, fn state -> Map.put(state, key, value) end)
  end

  def print(pid, key) do
    get(pid, key)
    |> inspect
  end

  # def get(pid, key) do
  #   Agent.get_and_update(pid, fn state ->
  #     Map.replace(state, key, count + 1)
  #   end)
  # end

  # def load_config(src) do
  #   if src.endswith(".json")
  #     load_json_config(src)
  #   else src.endswith(".yaml")
  #     load_yaml_config(src)
  #   end
  # end
  #
  # def load_file_data(src) do
  #   data = ""
  #   try
  #     data = File.read!(src)
  #     input.close()
  #   except IOError
  #     pass
  #
  #   return data
  # end
  #
  # def load_json_config(src) do
  #   for (key, val) in Jason.encode!(%{} = load_file_data(src))
  #     hash[key.strip()] = val
  #   end
  # end
  #
  # def load_yaml_config() do
  {:ok, map} = YamlElixir.read_from_file(path)
  #   entries = yaml.load(load_file_data())
  #   if entries
  #     update(entries)
  #   end
  # end
end
