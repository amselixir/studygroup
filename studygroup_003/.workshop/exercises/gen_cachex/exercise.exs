defmodule Workshop.Exercise.GenCachex do
  use Workshop.Exercise

  @title "Gen Cachex"
  @weight 6000

  @description """
  Write a key/value store, but this using GenServer.

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
  Write a key/value store, but this using GenServer.
  """

  @hint [
    "try to reuse as much as possible from previous assignment"
  ]
end
