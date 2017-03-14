defmodule Workshop.Exercise.Tokenizer do
  use Workshop.Exercise

  @title "Tokenizer"
  @weight 1000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Tokenize a tweet, meaning transform a string into list of words.
  Keep in mind all words should be lowercased, @handles, links and
  punctuation marks are discarded.


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
  Tokenize a tweet, meaning transform a string into list of words.
  You'll find further instructions in 01_tokenizer/tokenizer.exs.
  """

  @hint [
    "regexes are useful every now and then",
    "String module should have all needed functions"
  ]
end
