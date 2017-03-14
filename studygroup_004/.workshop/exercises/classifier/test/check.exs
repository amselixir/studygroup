defmodule Workshop.Exercise.ClassifierCheck do
  use Workshop.Validator
  alias MachineLearningExercise.Classifier

  verify "verify prior negative tweet is still negative" do
    {pos, neg} = Classifier.classify("I wish that i can keep you safe")
    (pos < neg && :ok) || {:error, "Previous tweet wasn't deemed negative {#{inspect pos}, #{inspect neg}} = Classifier.classify(\"I wish that i can keep you safe\")"}
  end

  verify "verify prior positive tweet is still positive" do
    {pos, neg} = Classifier.classify("Thanks for the sweet")
    (pos > neg && :ok) || {:error, "Previous tweet wasn't deemed positive {#{inspect pos}, #{inspect neg}} = Classifier.classify(\"Thanks for the sweet\")"}
  end
end
