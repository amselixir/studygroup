defmodule Workshop.Exercise.Classifier do
  use Workshop.Exercise

  @title "Classifier"
  @weight 9000

  @description """
  Now we can write our classifier which will tell if a new tweet is negative/positive.
  Write a function, which when given a tweet will return a tuple with positive and negative score.

  It will calculate the prior probability:
   number of tweets in a klass / total tweets

  For each word (unigram) calculate the conditional probability:
    number of occurences in a klass / (vocabulary size (distinct number of words) + sum of all words in that klass)

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
  Now we can write our classifier which will tell if a new tweet is negative/positive.
  Write a function, which when given a tweet will return a tuple with positive and negative score.
  """

  @hint [
    "use the source young padawan... or ask your teacher",
    "do or do not, there's no try"
  ]
end
