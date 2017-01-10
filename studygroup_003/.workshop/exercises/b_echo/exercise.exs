defmodule Workshop.Exercise.Echo do
  use Workshop.Exercise

  @title "Echo"
  @weight 3000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Write a function which will spawn a process which echo's every received message
  back to it's caller.

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
  Write a lazy map/2 version and run function which will execute all collected
  map expressions.function
  """

  @hint [
    "take a look at getting started -> processes part from elixir-lang.org"
  ]
end
