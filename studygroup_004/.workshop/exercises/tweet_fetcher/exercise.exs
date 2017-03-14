defmodule Workshop.Exercise.TweetFetcher do
  use Workshop.Exercise

  @title "Tweet Fetcher"
  @weight 2000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Before we can start tokenizing, we need to have a training set. In 'tweets.txt'
  you'll find a bunch of tweets, it's up to you to turn that file into a list of %Tweet{} structs.

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
  @todo, write the task for this exercise
  """

  @hint [
    "check Path.expand(__DIR__),  File.read and String.split to read all line into a list",
    "perhaps a regex which scans for digit, space, something, space, 'negative', space, number will work (\\d, \\s, .* etc)",
    ~s(don't forget to filter out empty lines Enum.filter fn\(line\) -> line != "" end\)),
  ]
end
