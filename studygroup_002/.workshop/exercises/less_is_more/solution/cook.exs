defmodule Cook do
  def combine(arranged_foods) do
    arranged_foods
    |> Enum.chunk(2, 2, Stream.cycle([nil]))
    |> Enum.map(&cook/1)
  end

  defp cook([:vegetable_slice, :meat_dice]), do: :high_cuisine
  defp cook([whatever, nil]), do: whatever
  defp cook(whatever), do: whatever
end
