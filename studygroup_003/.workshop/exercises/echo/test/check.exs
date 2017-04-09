defmodule Workshop.Exercise.EchoCheck do
  use Workshop.Validator

  verify "first echo" do
    child = Echo.start
    send child, {"Hello from other side", self()}
    verify_received {"Hello from other side", child}
  end

  verify "process echoes a second message" do
    child = Echo.start
    send child, {"Hello it's me", self()}
    send child, {"I was wondering...", self()}
    (verify_received({"Hello it's me", child}) == verify_received({"I was wondering...", child}) && :ok) || {:error, "Process doesn't seem to stay around for a second message"}
  end

  def verify_received(expected) do
    receive do
      ^expected ->
        :ok
      something ->
        {:error, ~s(expected received message to match #{inspect expected} but got #{inspect something} instead)}
    after 2000 ->
      {:error, "no message received after 2s"}
    end
  end
end
