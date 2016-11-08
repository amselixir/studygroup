defmodule Workshop.Exercise.ArrangeCheck do
  use Workshop.Validator

  verify "arrange 2 vegetable 1 meat" do
    input = [:vegetable_slice, :vegetable_slice, :vegetable_slice, :vegetable_slice, :vegetable_slice, :vegetable_slice, :meat_dice, :meat_dice, :meat_dice, :meat_dice, :meat_dice, :meat_dice]
    expected = [:vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice]
    (Arranger.arrange(input) == expected && :ok) || {:error, "expected Arranger.arrange(#{inspect input}) == #{inspect expected} , got #{inspect Arranger.arrange(input)}"}
  end

  verify "arrange vegetables and meats through one another" do
    input = [:vegetable_slice, :vegetable_slice, :meat_dice, :vegetable_slice, :vegetable_slice, :meat_dice, :meat_dice, :meat_dice, :meat_dice, :meat_dice, :vegetable_slice, :vegetable_slice]
    expected = [:vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice]
    (Arranger.arrange(input) == expected && :ok) || {:error, "expected Arranger.arrange(#{inspect input}) == #{inspect expected} , got #{inspect Arranger.arrange(input)}"}
  end

  verify "nothing to do, nothing ot solve" do
    input = []
    expected = []
    (Arranger.arrange(input) == expected && :ok) || {:error, "expected Arranger.arrange(#{inspect input}) == #{inspect expected} , got #{inspect Arranger.arrange(input)}"}
  end
end


