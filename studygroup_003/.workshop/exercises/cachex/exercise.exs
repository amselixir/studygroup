defmodule Workshop.Exercise.Cachex do
  use Workshop.Exercise

  @title "Cache / Key-Value store"
  @weight 5000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Implement your own cache | key/value store. Cachex.start/0 returns a pid for
  a new process which will keep key/value pairs in memory. It accepts new commands
  via messages. Get/set messages are 3-element tuples

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
  Implement your own cache | key/value store
  """

  @hint [
    "write client side first, receive block last",
    "use Process.info(pid) or :observer.start to take a look at a process' mailbox"
  ]
end
