defmodule CodewarsTest do
  use ExUnit.Case
  doctest Codewars

  test "greets the world" do
    assert Codewars.hello() == :world
  end

  test "multiplies" do
    assert Codewars.multiply(2, 3) == 6
  end
end
