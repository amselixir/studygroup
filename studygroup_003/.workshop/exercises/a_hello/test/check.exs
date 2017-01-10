defmodule Workshop.Exercise.AdeleCheck do
  use Workshop.Validator

  verify "we're getting the message" do
     Adele.sing() && verify_received
  end

  def verify_received do
    receive do
      {"Hello from", child} ->
        if child != self do
          :ok
        else
          {:error, "received message, but it doesn't seem to come from a new process"}
        end
      something ->
        {:error, ~s(expected received message to match {"Hello from", child} but got #{inspect something} instead)}
    after 2000 ->
      {:error, "no message received after 2s"}
    end
  end
end


