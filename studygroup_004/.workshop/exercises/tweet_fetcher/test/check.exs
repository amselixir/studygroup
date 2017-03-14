defmodule Workshop.Exercise.TweetFetcherCheck do
  use Workshop.Validator
  alias Tweets.Repo.Tweet

  verify "100 negative tweets found" do
    (Enum.count(Tweets.Repo.by_klass("negative")) == 100 && :ok) || {:error, "Expected to find 100 negative tweets in file, got #{Enum.count(Tweets.Repo.by_klass("negative"))}"}
  end

  verify "100 positive tweets found" do
    (Enum.count(Tweets.Repo.by_klass("positive")) == 100 && :ok) || {:error, "Expected to find 100 negative tweets in file, got #{Enum.count(Tweets.Repo.by_klass("negative"))}"}
  end

  verify "first positive correctly converted" do
    (List.first(Tweets.Repo.by_klass("positive")) == %Tweet{id: 128, text: "Thanks #TopNewFollowers @infogtic10 @BryanQuinn Happy to connect :)", klass: "positive", reference: "839435565229572096"} && :ok) || {:error, ~s("positive" |> Tweets.Repo.by_klass |> List.first did not match %Tweet{id: 128, .. reference: "839435565229572096"}, got: #{inspect ("positive" |> Tweets.Repo.by_klass |> List.first)})}
  end
end
