defmodule Workshop.Exercise.FirstExerciseCheck do
  use Workshop.Validator
  require FizzBuzz

  verify "verify FizzBuzz.translate(1)" do
    (FizzBuzz.translate(1) == 1 && :ok) || {:error, "FizzBuzz.translate(1) == 1 expected, got #{FizzBuzz.translate(1)}"}
  end

  verify "verify FizzBuzz.translate(5)" do
    (FizzBuzz.translate(5) == "fizz" && :ok) || {:error, "FizzBuzz.translate(5) == 'fizz', got #{FizzBuzz.translate(5)} "}
  end

  verify "verify FizzBuzz.translate(3)" do
    (FizzBuzz.translate(3) == "buzz" && :ok) || {:error, "FizzBuzz.translate(3) == 'buzz' expected, got #{FizzBuzz.translate(3)}"}
  end

  verify "verify FizzBuzz.translate(45)" do
    (FizzBuzz.translate(45) == "fizzbuzz" && :ok) || {:error, "FizzBuzz.translate(45) 'fizzbuzz' expected, got #{FizzBuzz.translate(45)}"}
  end
end
