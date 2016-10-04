defmodule Workshop.Exercise.TwoEquals do
  use Workshop.Exercise

  @title "Two Equals"
  @weight 4000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  A trait of most functional languages is that it reads like a set of expressions
  instead of statements. It's often compared with algebra, being declarative instead
  of imperative.

  For this exercise write a function which takes two parameter and return true if
  they're equal. Don't use any conditionals functions.

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
  Write an equal?/2 function which will return true if both items are equal, false otherwise.
  """

  @hint [
    "try writing the @spec definition for this function"
  ]
end
