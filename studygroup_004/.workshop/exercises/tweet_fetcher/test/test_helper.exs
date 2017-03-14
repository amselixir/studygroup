defmodule Workshop.Exercise.TweetFetcherCheck.Helper do
  def exec(solution_dir) do
    "tweets_repo.exs"
    |> Path.expand(solution_dir)
    |> Code.require_file

    Code.require_file("check.exs", __DIR__)

    Workshop.Exercise.TweetFetcherCheck.run()
  end
end
