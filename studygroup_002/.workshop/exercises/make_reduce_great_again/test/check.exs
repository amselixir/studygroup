defmodule Workshop.Exercise.MakeReduceGreatAgainCheck do
  use Workshop.Validator

  verify "sum numbers" do
    input = [1, 2, 3]
    fun = fn(x, acc) -> x * acc end
    fun_ins = "fn(x, acc) -> x * acc end"
    expected = 6
    (Duce.reduce(input, fun) == expected && :ok) || {:error, "expected Duce.reduce(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect Duce.reduce(input, fun)}"}
  end

  verify "multiplies numbers" do
    input = [-2, 4 , 41]
    fun = fn(x, acc) -> x * acc end
    fun_ins = "fn(x, acc) -> x * acc end"
    expected = -328
    (Duce.reduce(input, fun) == expected && :ok) || {:error, "expected Duce.reduce(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect Duce.reduce(input, fun)}"}
  end

  verify "nothing to do, nothing to solve" do
    input = []
    fun = fn(x) -> x * x end
    fun_ins = "fn(x) -> x * x end"
    expected = []
    (Duce.reduce(input, fun) == expected && :ok) || {:error, "expected Duce.reduce(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect Duce.reduce(input, fun)}"}
  end

  verify "not enough to do, carry on" do
    input = [5_000_000_000_000_000_000]
    fun = fn(x, acc) -> x * acc end
    fun_ins = "fn(x, acc) -> x * acc end"
    expected = 5_000_000_000_000_000_000
    (Duce.reduce(input, fun) == expected && :ok) || {:error, "expected Duce.reduce(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect Duce.reduce(input, fun)}"}
  end
end
