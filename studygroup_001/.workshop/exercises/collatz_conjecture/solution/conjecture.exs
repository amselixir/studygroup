defmodule Conjecture do

  @doc """
  collatz/1 takes number (> 1), and returns the number of steps required to get to when
  following the rules if n is odd, multiply with 3 and add 1. if n is even, divide by 2
  """
  @spec collatz(integer) :: integer
  def collatz(number) do
    collatz(number, 0)
  end

  def collatz(1, steps), do: steps
  def collatz(number, steps) when rem(number, 2) == 0 do
    collatz(div(number, 2), steps + 1)
  end

  def collatz(number, steps) do
    collatz(number * 3 + 1, steps + 1)
  end
end
