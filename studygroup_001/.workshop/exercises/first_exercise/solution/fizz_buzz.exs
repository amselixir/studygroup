defmodule FizzBuzz do
  import Kernel, except: [if: 2, unless: 2, case: 2]

  def translate(number) when rem(number, 15) == 0,  do: "fizzbuzz"
  def translate(number) when rem(number, 5) == 0,   do: "fizz"
  def translate(number) when rem(number, 3) == 0,   do: "buzz"
  def translate(number),                            do: number
end
