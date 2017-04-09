defmodule Echo do
  @doc """
    starts a process which listens for tuples containing a message and sender PID
    sends back a tuple with original message plus it's own PID
  """
  @spec start() :: pid
  def start() do
    spawn &loop/0
  end

  def loop do
    receive do
      {msg, from} ->
        send from, {msg, self()}
        loop()
    after 5000 ->
      IO.puts "no message received after 5s"
    end
  end
end
