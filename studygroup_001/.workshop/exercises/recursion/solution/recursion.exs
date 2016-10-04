defmodule Recursion do

  @doc """
  sum/1 takes a list of numbers, runs it through a recursive function
  """
  def sum(numbers), do: sum(numbers, 0)

  @doc """
  sum/2 takes the list of numbers and a intermidiate result and goes though the
  list until there's nothing left
  """
  def sum([], result), do: result

  def sum([head | tail], result) do
    sum(tail, result + head)
  end

  # the not-tail-call-optimized version:
  # def sum([head | tail]), do: head + sum(tail)
end
