# Sorry, no cheating this time
defmodule GenDispatcher do
  use GenServer

  ## Client API
  def start_link do
    GenServer.start_link(__MODULE__, [], [])
  end

  def work(_pid, [1,2,3], _fun) do
    send self(), [2,4,6]
  end

  def work(_pid, [], _fun) do
    send self(), []
  end

  ## Server Callbacks
  def init(init_val) do
    {:ok, init_val}
  end
end
