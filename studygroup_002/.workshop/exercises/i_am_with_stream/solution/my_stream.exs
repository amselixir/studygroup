defmodule MyStream do
  defstruct collection: [], result: [], funs: []

  def map(collection, fun) do
    Stream.map(collection, fun)
  end

  def run(assignments) do
    Enum.to_list(assignments)
  end
end
