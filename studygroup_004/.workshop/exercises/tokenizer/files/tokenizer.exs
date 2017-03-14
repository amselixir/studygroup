defmodule MachineLearningExercise.Tokenizer do
  @doc """
  Tokenize (and normalize) a string into words by:
    - lowercasing
    - removing @handles & links (http://**)
    - remove punctuation
    - split string into words
  """
  @spec tokenize(String.t) :: list(String.t)
  def tokenize(text) do
    text
  end

  # Example testcases
  # test "downcases tokens" do
  #   tokens = Tokenizer.tokenize("LOOK AT ME!")
  #   assert tokens == ["look", "at", "me"]
  # end

  # test "does not tokenize usernames" do
  #   tokens = Tokenizer.tokenize("@JohnDoe Look at him!")
  #   assert tokens == ["look", "at", "him"]
  # end

  # test "does not tokenize urls" do
  #   tokens = Tokenizer.tokenize("Look at http://t.co/123")
  #   assert tokens == ["look", "at"]
  # end

  # test "keeps don't's and can'ts together" do
  #   tokens = Tokenizer.tokenize("Can't get discounted tickets yet :(")
  #   assert Enum.count(tokens) == 5
  # end
end
