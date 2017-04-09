defmodule Penum do
  def pmap(collection, fun) do
    parent = self()

    collection
    |> Enum.map(&(spawn fn -> (send parent, {self(), fun.(&1)}) end))
    |> Enum.map(&wait_for_result/1)
  end

  def tmap(collection, fun) do
    collection
    |> Enum.map(&(Task.async(fn -> fun.(&1) end)))
    |> Enum.map(&Task.await/1)
  end

  defp wait_for_result(pid) do
    receive do
      { ^pid, result } -> result
    end
  end
end
