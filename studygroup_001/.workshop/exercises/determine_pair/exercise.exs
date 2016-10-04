defmodule Workshop.Exercise.DeterminePair do
  use Workshop.Exercise

  @title "Determine Pair"
  @weight 7000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Complete the function determine_pair, which will return a boolean, determining
  if the hand of 5 cards does include a pair (two cards of samen number).

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
  Complete the function determine_pair, which will return a boolean, determining
  if the hand of 5 cards does include a pair (two cards of samen number).
  """

  @hint [
    "remember the exercise about two equal values?",
    "good luck"
  ]
end
