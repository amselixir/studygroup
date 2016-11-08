defmodule Slicer do

  @spec chop(list(atom)) :: list(atom)
  def chop(items) do
    Enum.flat_map items, &chopper/1
  end

  defp chopper(:meat), do: [:meat_dice, :meat_dice, :meat_dice, :meat_dice, :meat_dice, :meat_dice]
  defp chopper(:vegetable), do: [:vegetable_slice, :vegetable_slice, :vegetable_slice]
  defp chopper(whatever), do: whatever
end



