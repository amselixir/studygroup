defmodule Arranger do
  # given :vegetable_slice and :meat_dice arrange them so
  # we have alternately :vegetable_slice and :meat_dice
  @spec arrange(list(:vegetable_slice | :meat_dice)) :: list(:vegetable_slice | :meat_dice)
  def arrange(foods) do
    {meats, veggies} = Enum.partition(foods, &(&1 == :meat_dice))
    Enum.zip(veggies, meats) |> Enum.flat_map( fn({veggie, meat}) -> [veggie, meat] end)
  end
end
