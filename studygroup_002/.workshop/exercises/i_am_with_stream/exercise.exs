defmodule Workshop.Exercise.IAmWithStream do
  use Workshop.Exercise

  @title "I Am With Stream"
  @weight 9000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Tonights ultimate challenge is to write your own (a part of) Stream module

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
    "read the docs for Stream.map/2",
    "play with Stream.map, see what it returns",
    ""
  ]
end
