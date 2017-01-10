defmodule Workshop.Exercise.Adele do
  use Workshop.Exercise

  @title "Hello from other side"
  @weight 2000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Write a function which will spawn a process. This child process sends a tuple
  containing string "Hello from" followed by it's own PID. (ex.: `{"Hello from", #PID<0.80.0>} `)

  # What's next?
  Take a look into arranger.exs and implement missing stuff. When you are
  done writing a solution it can be checked and verified using the
  `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Implement arrange function which
  given a list of (unarranged) :vegetable_slices and :meat_dices arranges them alternately
  starting with a :vegetable_slice
  """

  @hint [
    "remember `self` refers to current process, which might be the newly spawned one",
    "google for `sending messages with Elixir`"
  ]
end
