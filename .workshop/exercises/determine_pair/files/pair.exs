defmodule Pair do

  def colours, do: [:hearts, :clubs, :diamonds, :spades]
  def numbers, do: Enum.to_list(2..10) ++ [:jack, :queen, :king, :ace]

  @doc "Function to check if hand has a pair. A card is two element list of [colour, number]"
  @spec determine_pair(list) :: boolean
  def determine_pair(hand) do
    false
  end
end
