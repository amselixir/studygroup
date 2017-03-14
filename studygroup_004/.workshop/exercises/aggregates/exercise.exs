defmodule Workshop.Exercise.Aggregates do
  use Workshop.Exercise

  @title "Aggregates"
  @weight 3000

  @description """
  We now have to calculate some totals so we can use them in our formula for
  the final classifier.

  Given a klass (positive/negative), compute the:
   - unigram: count
   - vocabulary size (all distinct unigrams)

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
  We now have to calculate some totals so we can use them in our formula for
  the final classifier.

  Given a klass (positive/negative), compute the:
   - unigram: count
   - vocabulary size (all distinct unigrams)
  """

  @hint [
    "you want to reduce the list of words into a map with words as keys",
    "take a peek at Map.update/4"
  ]
end
