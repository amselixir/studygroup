defmodule Cachex do
  def start do
    spawn &loop/0
  end

  def get(pid, key) do
    send pid, {:get, key, self()}
    receive do
      value ->
        value
    after 2000 ->
      {:error, :timeout}
    end
  end

  def put(pid, key, value) do
    send pid, {:put, key, value}
    :ok
  end

  def delete(pid, key) do
    send pid, {:delete, key}
    :ok
  end

  def wipe(pid) do
    send pid, :wipe
    :ok
  end

  def loop, do: loop(%{})
  def loop(values) do
    receive do
      {:put, key, value} ->
        loop(Map.put(values, key, value))
      {:get, key, sender} ->
        send(sender, values[key])
        loop(values)
      {:delete, key} ->
        loop(Map.delete(values, key))
      :wipe ->
        loop()
      :stop ->
        :ok
      something ->
        IO.puts "Got unexpected message #{inspect something}"
        loop(values)
    end
  end
end
