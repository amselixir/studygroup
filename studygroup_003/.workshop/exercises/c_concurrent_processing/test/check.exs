defmodule Workshop.Exercise.ParallelMapCheck do
  use Workshop.Validator

  verify "double our inputs using pmap" do
    input = [1,2,3]
    expected = [2,4,6]
    (Penum.pmap(input, &(&1 *2)) == expected && :ok) || {:error, "expected Penum.pmap(#{inspect input}) == #{inspect expected} , got #{inspect Penum.pmap(input, &(&1 *2))}"}
  end

  verify "double our inputs using tmap" do
    input = [1,2,3]
    expected = [2,4,6]
    (Penum.tmap(input, &(&1 *2)) == expected && :ok) || {:error, "expected Penum.tmap(#{inspect input}) == #{inspect expected} , got #{inspect Penum.tmap(input, &(&1 *2))}"}
  end

  verify "nothing to do, nothing ot solve" do
    input = []
    expected = []
    (Penum.pmap(input, &(&1 *2)) == expected && :ok) || {:error, "expected Penum.pmap(#{inspect input}) == #{inspect expected} , got #{inspect Penum.pmap(input, &(&1 *2))}"}
  end
end
