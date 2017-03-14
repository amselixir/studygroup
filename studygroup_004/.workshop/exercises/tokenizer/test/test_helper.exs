defmodule Workshop.Exercise.TokenizerCheck.Helper do
  def exec(solution_dir) do
    "tokenizer.exs"
    |> Path.expand(solution_dir)
    |> Code.require_file

    Code.require_file("check.exs", __DIR__)

    Workshop.Exercise.TokenizerCheck.run()
  end
end
