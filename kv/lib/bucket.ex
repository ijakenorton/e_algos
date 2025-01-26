defmodule KV.Bucket do
  use Agent

  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  def get(bucket, key) do
    Agent.get(bucket, &Map.get(&1, key))
    # Agent.get(bucket, fn map -> Map.get(map, key) end)
  end

  def put(bucket, key, value) do
    Agent.update(bucket, &Map.put(&1, key, value))
    # Agent.update(bucket, fn map -> Map.put(map, key, value) end)
  end

  def delete(bucket, key) do
    Agent.get_and_update(bucket, fn map ->
      Map.pop(map, key)
    end)
  end

  def do_stuff() do
    IO.puts("do other stuff")
  end
end
