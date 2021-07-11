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
    Enum.sum(Enum.filter(1..number-1, fn x -> rem(x, 3) == 0 or rem(x, 5) == 0 end))
  end
end
