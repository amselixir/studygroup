defmodule Workshop.Exercise.ListComprehensionFilterCheck.Helper do
  def exec(solution_dir) do
    # Locate and load and perhaps start the users solution.

    # The following example assumes that the user solution is located
    # in a file called *exercise.exs*:

    "pythagoras.exs"
    |> Path.expand(solution_dir)
    |> Code.require_file

    # load and run the solution checker
    Code.require_file("check.exs", __DIR__)

    Workshop.Exercise.ListComprehensionFilterCheck.run()
  end
end
