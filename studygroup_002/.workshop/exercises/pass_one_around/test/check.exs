defmodule Workshop.Exercise.PassOneAroundCheck do
  use Workshop.Validator

  verify "computer says no for invalid pass" do
    message = "never gonna give you up... "
    password = :crypto.strong_rand_bytes(8) |> Base.url_encode64 |> binary_part(0, 8)
    expected = "sorry, topsecret"
    (Secrefier.encrypt(password, message).("random") == expected && :ok) || {:error, "expected Secrefier.encrypt(#{password}, #{message}) == #{expected} , got #{inspect Secrefier.encrypt(password, message).("random")}"}
  end

  verify "message received" do
    message = "roger that roger"
    password = :crypto.strong_rand_bytes(8) |> Base.url_encode64 |> binary_part(0, 8)
    (Secrefier.encrypt(password, message).(password) == message && :ok) || {:error, "expected Secrefier.encrypt(#{password}, #{message}) == #{message} , got #{inspect Secrefier.encrypt(password, message).(password)}"}
  end
end
