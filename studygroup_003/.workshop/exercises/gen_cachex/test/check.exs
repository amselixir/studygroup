defmodule Workshop.Exercise.GenCachexCheck do
  use Workshop.Validator

  verify "store and retrieve value" do
    with {:ok, pid} <- GenCachex.start_link(),
      nil <- GenCachex.get(pid, "name"),
      :ok <- GenCachex.put(pid, "name", "Derek"),
      "Derek" <- GenCachex.get(pid, "name")
    do
      :ok
    else
      result when is_binary(result) ->
        {:error, "got #{inspect result} while expected nil"}
      something ->
        {:error, "unexpected, got #{something}"}
    end
  end

  verify "store and delete value" do
    with {:ok, pid} <- GenCachex.start_link(),
      nil <- GenCachex.get(pid, "name"),
      :ok <- GenCachex.put(pid, "name", "Thijs"),
      "Thijs" <- GenCachex.get(pid, "name"),
      :ok <- GenCachex.delete(pid, "name"),
      nil <- GenCachex.get(pid, "name")
    do
      :ok
    else
      result when is_binary(result) ->
        {:error, "got #{inspect result} while expecting nil"}
      something ->
        {:error, "unexpected, got #{something}"}
    end
  end

  verify "store and wipe all" do
    with {:ok, pid} <-GenCachex.start_link(),
      nil <- GenCachex.get(pid, "name"),
      :ok <- GenCachex.put(pid, "name", "Arno"),
      "Arno" <- GenCachex.get(pid, "name"),
      :ok <- GenCachex.wipe(pid),
      nil <- GenCachex.get(pid, "name")
    do
      :ok
    else
      result when is_binary(result) ->
        {:error, "got #{inspect result} while expecting nil"}
      something ->
        {:error, "unexpected, got #{something}"}
    end
  end
end
