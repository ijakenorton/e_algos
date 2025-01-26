defmodule Tree do
  defstruct value: 0, size: 0, height: 0, depth: 1, left: nil, right: nil, parent: nil

  def tree(), do: %Tree{}

  def main do
    inspect(%Tree{})
  end
end
