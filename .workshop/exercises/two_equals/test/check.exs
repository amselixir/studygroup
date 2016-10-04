defmodule Workshop.Exercise.TwoEqualsCheck do
  use Workshop.Validator
  require Compare

  verify "verify something" do
    (Compare.equal?(?a, 97) == true && :ok) || {:error, "Comparison of two items didn't return true, got #{Compare.equal?(?a, 97)}"}
  end

  verify "verify something else" do
    (Compare.equal?("a", true) == false && :ok) || {:error, "Comparison of two unequal items should be false, got #{Compare.equal?("a", true)}"}
  end
end
