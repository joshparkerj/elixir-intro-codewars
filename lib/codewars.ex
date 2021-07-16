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
    String.downcase(str) |>
    String.codepoints() |>
    Enum.reduce(0, fn
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
end
