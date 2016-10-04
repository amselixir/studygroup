defmodule Pythagoras do
  def test?(as, bs, cs) do
    for a <- as, b <- bs, c <- cs, a*a + b*b == c*c, do: {a ,b, c}
  end
end
