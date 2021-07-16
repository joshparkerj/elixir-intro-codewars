defmodule CodewarsTest do
  use ExUnit.Case
  doctest Codewars

  test "greets the world" do
    assert Codewars.hello() == :world
  end

  test "multiplies" do
    assert Codewars.multiply(2, 3) == 6
  end

  test "multiples of 3 or 5 less than 3" do
    assert Codewars.solution(2) == 0
  end

  test "multiples of 3 or 5 first two" do
    assert Codewars.solution(6) == 8
  end

  test "multiples of 3 or 5 first four" do
    assert Codewars.solution(10) == 23
  end

  test "get_count" do
    assert Codewars.get_count("abracadabra") == 5
  end

  test "get count with capital letters" do
    assert Codewars.get_count("ElIxIr rOcks") == 4
  end

  test "get count with no vowels" do
    assert Codewars.get_count("thnks fr th mmrs") == 0
  end

  test "even number" do
    assert Codewars.even_or_odd(2) == "Even"
  end

  test "odd number" do
    assert Codewars.even_or_odd(3) == "Odd"
  end

  test "which is the odd one out (unpaired integer)" do
    assert Codewars.find([1,2,3,4,5,6,1,2,3,4,5]) == 6
  end

  test "odd one out paired once" do
    assert Codewars.find([1,2,3,4,5,6,1,2,3,4,5,6,6]) == 6
  end

  test "remove vowels from the sentence" do
    assert Codewars.disemvowel("thanks fOr the mEmorIes") == "thnks fr th mmrs"
  end
end
