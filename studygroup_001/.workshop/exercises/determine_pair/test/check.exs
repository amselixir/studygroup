defmodule Workshop.Exercise.DeterminePairCheck do
  use Workshop.Validator
  use ExUnit.Case
  import Pair

  test "one pair" do
    assert(determine_pair(one_pair()))
  end

  test "straight has no pair" do
    refute(determine_pair(straight()))
  end

  test "two pairs has a pair" do
    assert(determine_pair(two_pairs()))
  end

  test "full house has no pair" do
    assert(determine_pair(full_house()))
  end

  test "something has no pair" do
    refute(determine_pair(something()))
  end

  test "four of kind has a pair" do
    assert(determine_pair(four_of_kind()))
  end

  test "three of kind has a pair" do
    assert(determine_pair(three_of_kind()))
  end

  defp four_of_kind do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 5], [:hearts, 7] ]
  end

  defp full_house do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 6], [:hearts, 6] ]
  end

  defp straight do
    [ [:hearts, 4], [:spades, 5], [:diamonds, 6], [:clubs, 7], [:hearts, 8] ]
  end

  defp three_of_kind do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 6], [:hearts, 7] ]
  end

  defp two_pairs do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 6], [:clubs, 6], [:hearts, 7] ]
  end

  defp one_pair do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 6], [:clubs, :ace], [:hearts, 7] ]
  end

  defp something do
    [ [:hearts, 5], [:spades, 4], [:diamonds, 6], [:clubs, :jack], [:hearts, 7] ]
  end

#  verify "all tests pass" do
#    ((%{failures: 0} = ExUnit.run) && :ok) || ExUnit.start && {:error, "Some tests have failed"}
#  end
end
