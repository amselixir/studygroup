# This is the file that needs some work
defmodule MachineLearningExercise.Classifier do
  Code.require_file("tweets.exs",     __DIR__)
  Code.require_file("tokenizer.exs",  __DIR__)
  Code.require_file("aggregates.exs", __DIR__)
  alias MachineLearningExercise.{Aggregates, Tokenizer}

  def classify(text) do
    {probability(text, "positive"), probability(text, "negative")}
  end

  # tweets in this klass vs total tweets count
  defp prior_probability(klass) do
  end

  defp conditional_probability(word, klass) do
    # occurrences_of_word_in_klass = occurrences_of_word_in_klass(word, klass)
    # klass_unigrams_size =  sum_count of all unigrams for this klass
    # occurrences_of_word_in_klass / vocabulary_size + klass_unigrams_size
  end

  defp probability(text, klass) do
    text
    |> Tokenizer.tokenize
    |> Enum.map(&(conditional_probability(&1, klass)))
    |> Enum.reduce(fn (conditional_probability, accumulator) -> conditional_probability * accumulator end)
    |> Kernel.*(prior_probability(klass))
  end

  # fetch unigram count for specified word in klass
  defp occurrences_of_word_in_klass(word, klass) do
  end
end
