defmodule Tweets.Repo do
  defmodule Tweet do
    defstruct id: 0, text: "", klass: "negative", reference: ""
  end

  # @type klass :: << "negative" >> | << "positive" >>
  @spec by_klass(String.t) :: list(%Tweets.Repo.Tweet{})
  def by_klass(klass) do
    read_file
    |> Enum.map(&split_into_fields/1)
    |> Enum.map(&tweet_factory/1)
    |> Enum.filter(fn(tweet) -> tweet.klass == klass)
  end

  def count do
    read_file |> Enum.count
  end

  @spec read_file() :: list(String.t)
  defp read_file do
    ""
  end

  @spec split_into_fields(String.t) :: list(String.t)
  defp split_into_fields(line) do
    []
  end

  @spec tweet_factory(list(String.t)) :: %Tweets.Repo.Tweet{}
  defp tweet_factory(fieds) do
    %Tweets.Repo.Tweet{}
  end
end
