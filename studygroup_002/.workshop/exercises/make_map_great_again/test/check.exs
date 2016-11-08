defmodule Workshop.Exercise.MakeMapGreatAgainCheck do
  use Workshop.Validator

  verify "square numbers" do
    input = [1, 2, 3]
    fun = fn(x) -> x * x end
    fun_ins = "fn(x) -> x * x end"
    expected = [1, 4, 9]
    (MyList.map(input, fun) == expected && :ok) || {:error, "expected MyList.map(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect MyList.map(input, fun)}"}
  end

  verify "add 1 to existing numbers" do
    input = [-2, 4 , 41]
    fun = fn(x) -> x + 1 end
    fun_ins = "fn(x) -> x + 1 end"
    expected = [-1, 5, 42]
    (MyList.map(input, fun) == expected && :ok) || {:error, "expected MyList.map(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect MyList.map(input, fun)}"}
  end

  verify "nothing to do, nothing ot solve" do
    input = []
    fun = fn(x) -> x * x end
    fun_ins = "fn(x) -> x * x end"
    expected = []
    (MyList.map(input, fun) == expected && :ok) || {:error, "expected MyList.map(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect MyList.map(input, fun)}"}
  end
end
