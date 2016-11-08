defmodule Secrefier do
  @spec encrypt(String.t, String.t) :: fun
  def encrypt(secret, message) do
    fn(password) ->
      if (password == secret), do: message, else: "sorry, topsecret"
    end
  end
end
