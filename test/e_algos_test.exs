defmodule EAlgosTest do
  use ExUnit.Case
  doctest EAlgos

  test "greets the world" do
    assert EAlgos.hello() == :world
  end
end
