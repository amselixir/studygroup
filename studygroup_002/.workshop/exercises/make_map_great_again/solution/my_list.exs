defmodule MyList do

  @spec map(list, fun) :: list
  def map(collection, fun) do
    _map(collection, fun, [])
  end


  defp _map([], _fun, result), do: Enum.reverse(result)

  defp _map([head | tail], fun, acc) do
    _map(tail, fun, [fun.(head) | acc])
  end
end
