defmodule Workshop.Exercise.ConjectureCheck do
  use Workshop.Validator
  require Conjecture

  verify "check when we're there" do
    (Conjecture.collatz(1) == 0 && :ok) || { :error, "Conjecture.collatz(1) should return 0"}
  end

  verify "verify first step" do
    (Conjecture.collatz(2) == 1 && :ok) || { :error, "Conjecture.collatz(2) should return 1, got #{Conjecture.collatz(2)}"}
  end

  verify "21 in 7 steps" do
    (Conjecture.collatz(21) == 7 && :ok) || { :error, "Conjecture.collatz(21) should return 7, got #{Conjecture.collatz(21)}"}
  end

  verify "7 in 16 steps" do
    (Conjecture.collatz(7) == 16 && :ok) || { :error, "Conjecture.collatz(7) should return 16, got #{Conjecture.collatz(7)}"}
  end
end
