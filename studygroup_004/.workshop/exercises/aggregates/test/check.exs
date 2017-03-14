defmodule Workshop.Exercise.AggregatesCheck do
  use Workshop.Validator

  verify "verify total voc size" do
    (Aggregates.vocabulary_size == 875 && :ok) || {:error, "Seems like voc size is off, expected 875, got #{inspect Aggregates.vocabulary_size}"}
  end

  verify "billion is counted correctly in positive words list" do
    (Aggregates.unigram_counts("positive")["billion"] == 4 && :ok) || {:error, "Seems like unigram count is off, expected Aggregates.unigram_counts(\"positive\")[\"billion\"] == 4, got #{inspect Aggregates.unigram_counts("positive")["billion"]}"}
  end

  verify "birthday is counted correctly in negative words list" do
    (Aggregates.unigram_counts("negative")["birthday"] == 3 && :ok) || {:error, "Seems like unigram count is off, expected Aggregates.unigram_counts(\"negative\")[\"birthday\"] == 3, got #{inspect Aggregates.unigram_counts("positive")["billion"]}"}
  end
end
