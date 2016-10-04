defmodule Workshop.Exercise.FirstExercise do
  use Workshop.Exercise

  @title "First Exercise"
  @weight 1000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Write a FizzBuzz program without if/unless/case etc. The FizzBuzz program
  outputs numbers 1 - 100. Each number which can be divided by 5 should be
  replaced by "fizz", each multiple number of 3 should be replaced by "buzz"
  and each number which can be divided by both should be replace by "fizzbuzz"

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
  Write a FizzBuzz program without if/unless/case etc. The FizzBuzz program
  outputs numbers 1 - 100. Each number which can be divided by 5 should be
  replaced by "fizz", each multiple number of 3 should be replaced by "buzz"
  and each number which can be divided by both should be replace by "fizzbuzz"
  """

  @hint [
    "try using one function with different patterns",
    "try using guard clauses"
  ]
end
