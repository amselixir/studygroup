defmodule Aggregates do
  Code.require_file("words_repo.exs", __DIR__)

  def unigram_counts(klass) do
    %{"spooky" => 100}
  end

  def vocabulary_size do
   5
  end
end
