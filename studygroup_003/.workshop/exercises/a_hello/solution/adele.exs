defmodule Adele do
  @spec sing() :: pid
  def sing() do
    parent = self
    spawn fn -> send parent, {"Hello from", self} end
  end
end
