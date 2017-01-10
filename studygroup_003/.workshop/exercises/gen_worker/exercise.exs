defmodule Workshop.Exercise.GenWorker do
  use Workshop.Exercise

  @title "Gen Worker"
  @weight 7000

  @description """
  Write a GenServer based dispatcher which upon start, starts 8 worker processes.
  The GenServer receives a task, consisting of a collection and a function to map over
  the collection. Each worker ask the dispatcher for work which distributes the collection
  + function across these 8 workers. The flow looks like this

  GenDispatcher starts -> 8 workers started
  GenDispatcher receives work (`[1,2,3], fn(x) -> x * x end`)
  Each workers asks for 1 piece of work, after it's done, sends result back to dispatcher
  and asks for a new piece of work
  Dispatcher collects all the work, once it's finished, it sends the result to requester.

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
  Write an async job handler using on dispatcher & 8 worker processes.
  """

  @hint [
    "use `GenServer.start(MyModule.Server, %{}, [debug: [:trace]])` for debug tracing"
  ]
end
