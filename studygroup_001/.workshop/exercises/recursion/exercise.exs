defmodule Workshop.Exercise.Recursion do
  use Workshop.Exercise

  @title "Recursion"
  @weight 2000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Recursive function are the bread and butter of functional programs.
  Write a sum/1 function without using loops/conditionals or any Elixir modules.

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
  Write a sum/1 function without using loops/conditionals.
  Bonus point if it's tail call optimized
  """

  @hint [
    "try using an accumulator like Ruby's Array#reduce"
  ]
end
