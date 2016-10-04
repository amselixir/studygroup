defmodule Workshop.Exercise.RecursionCheck do
  use Workshop.Validator
  require Recursion

  verify "sum of empty list" do
    (Recursion.sum([]) == 0 && :ok) || { :error, "Recursion.sum([]) should return 0"}
  end

  verify "verify simple sum" do
    (Recursion.sum([1,2,3,4,5]) == 15 && :ok) || { :error, "Recursion.sum([1..5]) should return 15, got #{Recursion.sum([1,2,3,4,5])}"}
  end
end
