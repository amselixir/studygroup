defmodule Workshop.Exercise.LessIsMore do
  use Workshop.Exercise

  @title "Less Is More"
  @weight 3000

  @description """
  Given the sliced and diced meats and vegetables, combine them into high cuisine.
  :vegetable_slice + :meat_dice = :high_cuisine

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
  Create a high cuisine by combining :vegetable_slice with :meat_dice
  """

  @hint [
    "make sure any unused ingredients are saved"
  ]
end
