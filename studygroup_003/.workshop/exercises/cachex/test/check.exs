defmodule Workshop.Exercise.CachexCheck do
  use Workshop.Validator

  verify "store and retrieve value" do
    pid = Cachex.start()
    nil == Cachex.get(pid, "name")
    :ok == Cachex.put(pid, "name", "Derek")
    "Derek" == Cachex.get(pid, "name") && :ok
  end

  verify "store and delete value" do
    pid = Cachex.start()
    nil == Cachex.get(pid, "name")
    :ok == Cachex.put(pid, "name", "Thijs")
    "Thijs" == Cachex.get(pid, "name")
    :ok == Cachex.delete(pid, "name")
    nil == Cachex.get(pid, "name") && :ok
  end

  verify "store and wipe all" do
    pid = Cachex.start()
    nil == Cachex.get(pid, "name")
    :ok == Cachex.put(pid, "name", "Arno")
    "Arno" == Cachex.get(pid, "name")
    :ok == Cachex.wipe(pid)
    nil == Cachex.get(pid, "name") && :ok
  end
end
