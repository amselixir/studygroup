defmodule Workshop.Exercise.Arrange do
  use Workshop.Exercise

  @title "Arrange"
  @weight 2000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  The sliced veggies & meat dices have to be arranged so next person can quickly
  combine them into a delicious high cuisine item. Implement arrange function which
  given a list of (unarranged) :vegetable_slices and :meat_dices arranges them alternately
  starting with a :vegetable_slice

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
    "try to think how you would normally do this",
    "perhaps decompose them into 2 lists with group_by / partition ?",
    "perhaps combine them into 1 with zip ?"
  ]
end
