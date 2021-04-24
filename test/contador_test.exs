defmodule ContadorTest do
  use ExUnit.Case
  doctest Contador

  test "greets the world" do
    assert Contador.hello() == :world
  end
end
