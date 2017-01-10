defmodule GenCachex do
  use GenServer

  ## Client API
  def start_link do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def get(server, name) do
    GenServer.call(server, {:get, name})
  end

  def put(server, name, value) do
    GenServer.cast(server, {:put, name, value})
  end

  def delete(server, name) do
    GenServer.cast(server, {:delete, name})
  end

  def wipe(server) do
    GenServer.cast(server, :wipe)
  end

  ## Server Callbacks
  def init(:ok) do
    {:ok, %{}}
  end

  def handle_call({:get, name}, _from, values) do
    {:reply, Map.get(values, name), values}
  end

  def handle_cast({:put, name, value}, values) do
    {:noreply, Map.put(values, name, value)}
  end

  def handle_cast({:delete, name}, values) do
    {:noreply, Map.delete(values, name)}
  end

  def handle_cast(:wipe, _values) do
    {:noreply, %{}}
  end
end
