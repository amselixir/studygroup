defmodule Workshop.Exercise.Conjecture do
  use Workshop.Exercise

  @title "Conjecture Collatz"
  @weight 3000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Collatz Conjecture - Start with a number n > 1. Find the number of steps it
  takes to reach one (n == 1) using the following process: If n is even, divide it by 2.
  If n is odd, multiply it by 3 and add 1.

  # What's next?
  Get the task for this exercise by executing `mix workshop.task`. When you are
  done writing a solution it can be checked and verified using the
  `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Write a collatz/1 which calculates the steps for collatz conjecture.
  Start with a number n > 1. Find the number of steps it
  takes to reach one using the following process: If n is even, divide it by 2.
  If n is odd, multiply it by 3 and add 1.
  """

  @hint [
    "remember to use an accumulator like Ruby's Array#reduce",
    "does 1.0 equal 1 in Elixir?",
    "try to use IO.inspect to track what happens"
  ]
end
