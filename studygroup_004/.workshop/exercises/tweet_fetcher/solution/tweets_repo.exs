defmodule Tweets.Repo do
  defmodule Tweet do
    defstruct id: 0, text: "", klass: "negative", reference: ""
  end

  # @type klass :: "negative" | "positive"
  @spec by_klass(String.t) :: list(%Tweets.Repo.Tweet{})
  def by_klass(klass) do
    read_file()
    |> Enum.map(&split_into_fields/1)
    |> Enum.map(&tweet_factory/1)
    |> Enum.filter(fn(tweet) -> tweet.klass == klass end)
  end

  def count do
    read_file() |> Enum.count
  end

  defp read_file do
    "tweets.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split("\n")
    |> Enum.filter(&(&1 != ""))
  end

  defp split_into_fields(line) do
    Regex.run(~r/(\d+)\s+(.*)\s+(negative|positive)\s+(\d+)/, line)
  end

  defp tweet_factory([_line, s_id, tweet, klass, reference]) do
    {id, ""} = Integer.parse(s_id)
    %Tweet{id: id, text: tweet, klass: klass, reference: reference}
  end
end
