defmodule Workshop.Exercise.GenCachexCheck do
  use Workshop.Validator

  verify "store and retrieve value" do
    {:ok, pid} = GenCachex.start_link()
    nil == GenCachex.get(pid, "name")
    :ok == GenCachex.put(pid, "name", "Derek")
    "Derek" == GenCachex.get(pid, "name") && :ok
  end

  verify "store and delete value" do
    {:ok, pid} = GenCachex.start_link()
    nil == GenCachex.get(pid, "name")
    :ok == GenCachex.put(pid, "name", "Thijs")
    "Thijs" == GenCachex.get(pid, "name")
    :ok == GenCachex.delete(pid, "name")
    nil == GenCachex.get(pid, "name") && :ok
  end

  verify "store and wipe all" do
    {:ok, pid} = GenCachex.start_link()
    nil == GenCachex.get(pid, "name")
    :ok == GenCachex.put(pid, "name", "Arno")
    "Arno" == GenCachex.get(pid, "name")
    :ok == GenCachex.wipe(pid)
    nil == GenCachex.get(pid, "name") && :ok
  end
end
