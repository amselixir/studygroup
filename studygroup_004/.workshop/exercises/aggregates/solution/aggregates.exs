defmodule Aggregates do
  Code.require_file("words_repo.exs", __DIR__)

  def unigram_counts(klass) do
    case klass do
      "positive" ->
         Words.Repo.positive
         |> Enum.reduce(%{}, &update_count/2)
      "negative" ->
        Words.Repo.negative
         |> Enum.reduce(%{}, &update_count/2)
      _ -> {:error, "No klass specified: #{inspect klass}"}
    end
  end

  def vocabulary_size do
    Words.Repo.positive ++ Words.Repo.negative
    |> Enum.uniq
    |> Enum.count
  end

  defp update_count(word, acc) do
    Map.update acc, word, 1, &(&1 + 1)
  end
end
