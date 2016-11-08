defmodule Workshop.Exercise.Slice do
  use Workshop.Exercise

  @title "Slice And Dice"
  @weight 1000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Let's start with our cooking task: slicing & dicing. Implement a function chop which given
  some vegetables & meats, slices the vegetables & dices the meat into smaller pieces.

  vegetables go into slices of 3, meats go into dices of 6. (:vegetable -> 3x :vegetable_slice, :meat -> :meat_dice)

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
  implement Slicer.chop, which given a list of :meat / :vegetable, returns :vegetable_slice w/ :meat_dice
  """

  @hint [
    "take a look at Enum.map",
    "take a look at Enum.flat_map"
  ]
end
