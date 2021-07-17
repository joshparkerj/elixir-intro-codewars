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
    assert Codewars.find([1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5]) == 6
  end

  test "odd one out paired once" do
    assert Codewars.find([1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6, 6]) == 6
  end

  test "remove vowels from the sentence" do
    assert Codewars.disemvowel("thanks fOr the mEmorIes") == "thnks fr th mmrs"
  end

  test "middle of empty string" do
    assert Codewars.get_middle("") == ""
  end

  test "middle of string size one" do
    assert Codewars.get_middle("a") == "a"
  end

  test "middle of string size two" do
    assert Codewars.get_middle("ab") == "ab"
  end

  test "middle of string size three" do
    assert Codewars.get_middle("abc") == "b"
  end

  test "middle of string size four" do
    assert Codewars.get_middle("abcd") == "bc"
  end

  test "digital root 2 digits" do
    assert Codewars.digital_root(12) == 3
    assert Codewars.digital_root(16) == 7
  end

  test "digital root 3 digits" do
    assert Codewars.digital_root(678) == 3
    assert Codewars.digital_root(456) == 6
  end

  test "digital root 4 digits" do
    assert Codewars.digital_root(2345) == 5
  end

  test "returns a number's opposite" do
    assert Codewars.opposite(1) === -1
  end

  test "high positive and low negative" do
    assert Codewars.high_and_low("4 5 29 54 4 0 -214 542") == "542 -214"
  end

  test "not a square" do
    assert Codewars.square?(26) == false
  end

  test "a square" do
    assert Codewars.square?(25) == true
  end

  test "Welcome is reversed" do
    assert Codewars.spin_words("Welcome") == "emocleW"
  end

  test "First word is not reversed" do
    assert Codewars.spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
  end

  test "descending order five digits" do
    assert Codewars.descending_order(42145) == 54421
  end

  test "descending order six digits" do
    assert Codewars.descending_order(145263) == 654321
  end

  test "descending order nine digits" do
    assert Codewars.descending_order(123456789) == 987654321
  end
end
