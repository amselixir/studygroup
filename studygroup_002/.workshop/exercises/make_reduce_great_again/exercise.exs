defmodule Workshop.Exercise.MakeReduceGreatAgain do
  use Workshop.Exercise

  @title "Make Reduce Great Again"
  @weight 5000
  @description """
  Implement your own reduce function, which takes a list and a function (of arity 2)
  and returns a new collection/singular value with function applied to each item from
  original list and intermidiate accumulated value.

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
  Write your version of Enum.reduce
  """

  @hint [
    "look up documentation for Enum.reduce",
    "remember reduce has an extra 'case', which are 1 item lists",
    "call for help"
  ]
end
