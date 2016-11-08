defmodule Workshop.Exercise.IAmWithStreamCheck do
  use Workshop.Validator

  verify "verify simple sum" do
    input = [1, 2, 3]
    fun = fn(x) -> x * 2 end
    fun_ins = "fn(x, 2) -> x * 2 end"
    expected = [2, 4, 6]
    (MyStream.run(MyStream.map(input, fun)) == expected && :ok) || {:error, "expected MyStream.run MyStream.map(#{inspect input}, #{fun_ins}) == #{inspect expected} , got #{inspect MyStream.run(MyStream.map(input, fun))}"}
  end

  verify "verify piped usage" do
    input = [1, 2, 3]
    times2 = fn(x) -> x * 2 end
    square = fn(x) -> x * x end
    times2_ins = "fn(x, 2) -> x * 2 end"
    square_ins = "fn(x) -> x * x end"
    expected = [4, 16, 36]
    ((MyStream.map(input, times2) |> MyStream.map(square) |> MyStream.run()) == expected && :ok) || {:error, "expected MyStream.map(#{inspect input}, #{times2_ins}) |> MyStream.map(#{square_ins}) |> MyStream.run() == #{inspect expected}, got #{inspect (MyStream.map(input, times2) |> MyStream.map(square) |> MyStream.run())}"}
  end
end
