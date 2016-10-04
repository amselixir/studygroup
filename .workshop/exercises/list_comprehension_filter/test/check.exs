defmodule Workshop.Exercise.ListComprehensionFilterCheck do
  use Workshop.Validator
  require Pythagoras

  verify "small list of possible pythagoras" do
    as = 3..8
    bs = 3..6
    cs = 5..10
    result = [{3, 4, 5}, {4, 3, 5}, {8, 6, 10}]
    (Pythagoras.test?(as, bs, cs) == result && :ok) || {:error, "Expected #{inspect result}, got #{inspect Pythagoras.test?(as, bs, cs)}"}
  end

  verify "impossible list" do
    as = 3..8
    bs = 3..6
    cs = 1..4
    (Pythagoras.test?(as, bs, cs) == [] && :ok) || {:error, "Didn't expect a result, got #{inspect Pythagoras.test?(as, bs, cs)}"}
  end
end
