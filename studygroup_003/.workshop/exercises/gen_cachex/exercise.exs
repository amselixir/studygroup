defmodule Workshop.Exercise.GenCachex do
  use Workshop.Exercise

  @title "Gen Cachex"
  @weight 6000

  @description """
  Write a key/value store, but this using GenServer. Implement put, get, delete and wipe.

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
    "try to reuse as much as possible from previous assignment",
    "use `GenServer.start(MyModule.Server, %{}, [debug: [:trace]])` for debug tracing",
    "write out client side first, implement server side/callbacks last"
  ]
end
