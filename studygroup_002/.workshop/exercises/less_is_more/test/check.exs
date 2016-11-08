defmodule Workshop.Exercise.LessIsMoreCheck do
  use Workshop.Validator

  verify "combine even number" do
    input = [:vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice]
    expected = [:high_cuisine, :high_cuisine, :high_cuisine, :high_cuisine, :high_cuisine, :high_cuisine]
    (Cook.combine(input) == expected && :ok) || {:error, "expected Cook.combine(#{inspect input}) == #{inspect expected} , got #{inspect Cook.combine(input)}"}
  end

  verify "combine uneven numbers" do
    input = [:vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice, :meat_dice, :vegetable_slice]
    expected = [:high_cuisine, :high_cuisine, :high_cuisine, :vegetable_slice]
    (Cook.combine(input) == expected && :ok) || {:error, "expected Cook.combine(#{inspect input}) == #{inspect expected} , got #{inspect Cook.combine(input)}"}
  end

  verify "nothing to do, nothing ot solve" do
    input = []
    expected = []
    (Cook.combine(input) == expected && :ok) || {:error, "expected Cook.combine(#{inspect input}) == #{inspect expected} , got #{inspect Cook.combine(input)}"}
  end
end
