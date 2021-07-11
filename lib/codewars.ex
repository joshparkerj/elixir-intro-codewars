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
    multipleOfThree = rem(number - 1, 3) == 0
    multipleOfFive = rem(number - 1, 5) == 0
    eitherOne = multipleOfThree or multipleOfFive

    if eitherOne do
      number + solution(number - 1) - 1
    else
      solution(number - 1)
    end
  end
end
