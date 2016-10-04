defmodule Workshop.Exercise.DeckOfCardsCheck do
  use Workshop.Validator
  require Deck

  verify "Deck.new create 52 cards" do
    ((Deck.new |> Enum.count) == 52 && :ok) || {:error, "Not enough cards in deck, should be 52, got #{(Deck.new |> Enum.count)}"}
  end

  verify "cards in deck are 2 element tuples" do
    (Enum.count(for [colour, number] <- Deck.new, do: [colour, number]) == 52 && :ok) || {:error, "Cards in deck don't have 2 element list format"}
  end

  verify "deck of cards is shuffled" do
    (Deck.new != Deck.new && :ok) || {:error, "Deck of cards doesn't seem to be shuffled"}
  end
end
