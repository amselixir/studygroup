defmodule Pair do

  # One pair
  @spec determine_pair(list) :: boolean
  def determine_pair([[_, a], [_, a], _, _, _]), do: true
  def determine_pair([_, [_, a], [_, a], _, _]), do: true
  def determine_pair([_, _, [_, a], [_, a], _]), do: true
  def determine_pair([_, _, _, [_, a], [_, a]]), do: true

  def determine_pair(_), do: false
end
