defmodule Workshop.Exercise.MakeMapGreatAgain do
  use Workshop.Exercise

  @title "Make Map Great Again"
  @weight 4000
  @description """
  Implement your own map function, which takes a list and a function (of arity 1)
  and returns a new list with function applied to each item from original list.

  # What's next?
  Take a look into my_list.exs and implement missing stuff. When you are
  done writing a solution it can be checked and verified using the
  `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Implement your own Enum.map/2 function, taking a list and function.
  """

  @hint [
    "take a look at using anonymous function",
    "call for help"
  ]
end
