defmodule Workshop.Exercise.DeckOfCards do
  use Workshop.Exercise

  @title "Deck Of Cards"
  @weight 6000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Let's start with the first part of our Poker game:
  create a deck of cards. A deck of cards consists of 52 cards, having four
  colours/suites: :hearts, :clubs, :diamonds, :spades and 13 numbers/ranks (2 to 10,
  :jack, :queen, :king, :ace)

  Create a function which will generate a new (shuffled deck of cards). A card
  is a 2 element list, containing a suite/colour and a number.

  # What's next?
  Get the task for this exercise by executing `mix workshop.task`. When you are
  done writing a solution it can be checked and verified using the
  `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Create a function which will generate a new (shuffled deck of cards). A card
  is a 2 element list, containing a suite/colour and a number.
  """

  @hint [
    "use list comprehensions, saves you some typing",
    "try looking for a shuffle function in case you want to shuffle",
    "you'll probably need to seed before shuffling the deck"
  ]
end
