defmodule Codewars do
  @moduledoc """
  Documentation for `Codewars`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Codewars.hello()
      :world

  """
  def hello do
    :world
  end

  def multiply(a, b) do
    a * b
  end

  def solution(number) when number <= 2 do
    0
  end

  def solution(number) do
    Enum.sum(Enum.filter(1..(number - 1), fn x -> rem(x, 3) == 0 or rem(x, 5) == 0 end))
  end

  def get_count(str) do
    String.downcase(str)
    |> String.codepoints()
    |> Enum.reduce(0, fn
      e, acc when e in ~w(a e i o u) -> acc + 1
      _e, acc -> acc
    end)
  end

  def even_or_odd(number) do
    if rem(number, 2) == 0 do
      "Even"
    else
      "Odd"
    end
  end

  @doc """
  Find the odd int
  """
  def find(list) do
    Enum.reduce(list, &Bitwise.bxor/2)
  end

  @doc """
  Disemvowel trolls
  """
  def disemvowel(s) do
    Regex.replace(~r/[aeiou]/i, s, "")
  end

  @doc """
  Get the Middle Character
  """
  def get_middle(str) do
    str_length = String.length(str)
    require Integer

    if Integer.is_even(str_length) do
      String.slice(str, div(str_length, 2) - 1, 2)
    else
      String.slice(str, div(str_length, 2), 1)
    end
  end
end
