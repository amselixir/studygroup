defmodule Duce do
  @spec reduce(list, fun) :: any

  def reduce([], _fun), do: []
  def reduce([head | tail], fun) do
    reduce(tail, fun, head)
  end

  @spec reduce(list, fun, any) :: any
  def reduce([], _fun, start_acc), do: start_acc
  def reduce([head | []], _fun, []), do: head
  def reduce([head | tail], fun, start_acc) do
    reduce(tail, fun, fun.(head, start_acc))
  end
end
