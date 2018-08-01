defmodule BencheesTest do
  use ExUnit.Case
  doctest Benchees

  test "greets the world" do
    assert Benchees.hello() == :world
  end
end
