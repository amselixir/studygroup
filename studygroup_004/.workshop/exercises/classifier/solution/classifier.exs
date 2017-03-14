defmodule MachineLearningExercise.Classifier do
  Code.require_file("tweets.exs",     __DIR__)
  Code.require_file("tokenizer.exs",  __DIR__)
  Code.require_file("aggregates.exs", __DIR__)
  alias MachineLearningExercise.{Aggregates, Tokenizer}

  def classify(text) do
    {probability(text, "positive"), probability(text, "negative")}
  end

  defp prior_probability(klass) do
    (Tweets.by_klass(klass) |> Enum.count) / Tweets.count
  end

  defp conditional_probability(word, klass) do
    occurrences_of_word_in_klass = occurrences_of_word_in_klass(word, klass)
    klass_unigrams_size =  (Aggregates.unigram_counts(klass) |> sum_count)
    occurrences_of_word_in_klass / (Aggregates.vocabulary_size + klass_unigrams_size)
  end

  defp probability(text, klass) do
    text
    |> Tokenizer.tokenize
    |> Enum.map(&(conditional_probability(&1, klass)))
    |> Enum.reduce(fn (conditional_probability, accumulator) -> conditional_probability * accumulator end)
    |> Kernel.*(prior_probability(klass))
  end

  defp occurrences_of_word_in_klass(word, klass) do
    Aggregates.unigram_counts(klass)[word] || 1
  end

  defp sum_count(unigrams) do
    Enum.reduce(unigrams, 0, fn({_key, val}, acc) -> val + acc end)
  end
end
