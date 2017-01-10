defmodule Workshop.Exercise.ParallelMap do
  use Workshop.Exercise

  @title "Parallel Map"
  @weight 4000

  @description """
  Write a function, which takes a collection and a function, and applies
  that function on each element of the collection by spawning a process for
  each item in the collection. A "parallel map" so to speak.

  Implement 2 versions, one using Task.async (tmap) and one 'plain' (pmap) version

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
  Write 2 parallel map implementation (one using pure processes, second using Task.async)
  """

  @hint [
    "if pure functions is too hard, try the Task version first"
  ]
end
