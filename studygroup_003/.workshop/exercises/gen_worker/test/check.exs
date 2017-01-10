defmodule Workshop.Exercise.GenWorkerCheck do
  use Workshop.Validator

  verify "double our inputs using pmap" do
    {:ok, pid} = GenDispatcher.start_link()
    input = [1,2,3]
    expected = [2,4,6]
    GenDispatcher.work(pid, input, &(&1 *2))
    (verify_received(expected) && :ok) || {:error, "expected Penum.pmap(#{inspect input}) == #{inspect expected} , got #{inspect Penum.pmap(input, &(&1 *2))}"}
  end

  verify "nothing to do, nothing to solve" do
    {:ok, pid} = GenDispatcher.start_link()
    input = []
    expected = []
    GenDispatcher.work(pid, input, &(&1 *2))
    (verify_received(expected) && :ok) || {:error, "expected Penum.pmap(#{inspect input}) == #{inspect expected} , got #{inspect Penum.pmap(input, &(&1 *2))}"}
  end

  def verify_received(expected) do
    receive do
      ^expected ->
        :ok
      something ->
        {:error, ~s(expected received message to match #{inspect expected} but got #{inspect something} instead)}
    after 3000 ->
      {:error, "no message received after 2s"}
    end
  end

end
