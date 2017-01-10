defmodule Penum do
  @doc """
      iex> Penum.pmap([1,2,3], &(&1*2))
      [2,4,6]
  """
  @spec pmap(Enumerable.t, fun) :: Enumerable.t
  def pmap(collection, fun) do

  end

  # same functionality, using Tasks
  def tmap(collection, fun) do

  end
end
