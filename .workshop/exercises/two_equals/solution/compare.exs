defmodule Compare do
  import Kernel, except: [==: 2]

  def equal?(a, a), do: true
  def equal?(_,_),  do: false
end
