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

  @doc """
  1
  Multiply
  """
  def multiply(a, b) do
    a * b
  end

  @doc """
  2
  Multiples of 3 or 5
  """
  def solution(number) when number <= 2 do
    0
  end

  def solution(number) do
    Enum.sum(Enum.filter(1..(number - 1), fn x -> rem(x, 3) == 0 or rem(x, 5) == 0 end))
  end

  @doc """
  3
  Vowel count
  """
  def get_count(str) do
    String.downcase(str)
    |> String.codepoints()
    |> Enum.reduce(0, fn
      e, acc when e in ~w(a e i o u) -> acc + 1
      _e, acc -> acc
    end)
  end

  @doc """
  4
  Even or Odd
  """
  def even_or_odd(number) do
    if rem(number, 2) == 0 do
      "Even"
    else
      "Odd"
    end
  end

  @doc """
  5
  Find the odd int
  """
  def find(list) do
    Enum.reduce(list, &Bitwise.bxor/2)
  end

  @doc """
  6
  Disemvowel trolls
  """
  def disemvowel(s) do
    Regex.replace(~r/[aeiou]/i, s, "")
  end

  @doc """
  7
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

  @doc """
  8
  Sum of Digits / Digital Root
  """
  # TODO: try solving this using Enum.sum
  def digital_root(n) when n < 10, do: n
  def digital_root(n), do: (digital_root(div(n, 10)) + rem(n, 10)) |> digital_root()

  @doc """
  9
  Opposite number
  """
  def opposite(number) do
    -number
  end

  @doc """
  10
  Highest and Lowest
  """
  # TODO: try solving this using Enum.min_max
  def high_and_low(s) do
    nums = String.split(s) |> Enum.map(&String.to_integer/1)

    first = hd(nums)

    high_low =
      Enum.reduce(nums, %{:high => first, :low => first}, fn e, acc ->
        cond do
          e < acc.low -> %{acc | :low => e}
          e > acc.high -> %{acc | :high => e}
          true -> acc
        end
      end)

    "#{high_low.high} #{high_low.low}"
  end

  @doc """
  11
  You're a square!
  """
  # TODO: try solving this using :math.sqrt
  def square?(n, root \\ 0) do
    target = root * root

    cond do
      target == n -> true
      target > n -> false
      true -> square?(n, root + 1)
    end
  end

  @doc """
  12
  Stop gninnipS My sdroW!
  """
  # TODO: try solving this using Regex.replace with replacement function
  # TODO: try solving this using Enum.map_join instead of map followed by join
  def spin_words(message) do
    String.split(message)
    |> Enum.map(fn word ->
      if String.length(word) > 4 do
        String.reverse(word)
      else
        word
      end
    end)
    |> Enum.join(" ")
  end

  @doc """
  13
  Descending Order
  """
  # TODO: try solving this using Integer.undigits
  # TODO: try solving this by passing a captured operator to Enum.sort
  def descending_order(n),
    do:
      n
      |> Integer.digits()
      |> Enum.sort()
      |> Enum.reverse()
      |> Enum.reduce(fn e, acc -> 10 * acc + e end)

  @doc """
  14
  Mumbling
  """
  # TODO: try solving it destructuring the element in the signature of the map function
  def accum(s) do
    String.graphemes(s)
    |> Enum.with_index()
    |> Enum.map_join("-", fn e ->
      {c, i} = e

      String.duplicate(c, i + 1)
      |> String.capitalize()
    end)
  end
end
