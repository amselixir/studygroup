defmodule MachineLearningExercise.Tokenizer do
  def tokenize(text) do
    text
    |> String.downcase
    |> String.replace(~r/(@\S*|http\S*|')/, "")
    |> String.split(~r/\W/u)
    |> Enum.reject(&(String.length(&1) == 0))
  end
end
