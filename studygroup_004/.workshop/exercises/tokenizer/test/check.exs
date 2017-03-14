defmodule Workshop.Exercise.TokenizerCheck do
  use Workshop.Validator
  alias MachineLearningExercise.Tokenizer

  verify "downcases tokens" do
    tokens = Tokenizer.tokenize("LOOK AT ME!")
    (tokens == ["look", "at", "me"] && :ok) || {:error, ~s(Tokenizer.tokenize\("LOOK AT ME!"\) == ["look", "at", "me"] expected, got #{Tokenizer.tokenize("LOOK AT ME!")})}
  end

  verify "does not tokenize usernames" do
    tokens = Tokenizer.tokenize("@JohnDoe Look at me!")
    (tokens == ["look", "at", "me"] && :ok) || {:error, ~s(Tokenizer.tokenize\("@JohnDoe Look at me!"\) == ["look", "at", "me"] expected, got #{Tokenizer.tokenize("@JohnDoe Look at me!")})}
  end

  verify "does not tokenize urls" do
    tokens = Tokenizer.tokenize("Look at http://t.co/123")
    (tokens == ["look", "at"] && :ok) || {:error, ~s(Tokenizer.tokenize\("Look at http://t.co/123"\) == ["look", "at"] expected, got #{Tokenizer.tokenize("Look at http://t.co/123")})}
  end

  verify "does all as specified" do
    tweet = "YOU SAY ABOUT MINECRAFT!?!?!?! i heard they are epic winklevoss twins :((( sad face when your pizza rolls are done 👆👇nigger"
    result = ["you", "say", "about", "minecraft", "i", "heard", "they", "are", "epic", "winklevoss", "twins", "sad", "face", "when", "your", "pizza", "rolls", "are", "done", "nigger"]
    (Tokenizer.tokenize(tweet) == result && :ok) || {:error, ~s(Tokenizer.tokenize\(#{tweet}\) == #{inspect result} expected, got #{Tokenizer.tokenize(tweet)})}
  end
end
