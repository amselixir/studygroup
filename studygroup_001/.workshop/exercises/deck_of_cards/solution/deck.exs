defmodule Deck do

  @doc """
  Creates new deck of shuffled cards
  """
  @spec new() :: list
  def new do
    :rand.seed(:exs1024, :os.timestamp) # set seed for randomization
    for colour <- colours, number <- numbers do
      [ colour, number ]
    end
    |> Enum.shuffle
  end

  def colours, do: [:hearts, :clubs, :diamonds, :spades]
  def numbers, do: Enum.to_list(2..10) ++ [:jack, :queen, :king, :ace]
end
