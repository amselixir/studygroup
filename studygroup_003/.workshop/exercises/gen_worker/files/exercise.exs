# Write a GenServer based dispatcher which upon start, starts 8 worker processes.
# The GenServer receives a task, consisting of a collection and a function to map over
# the collection. Each worker ask the dispatcher for work which distributes the collection
# + function across these 8 workers. The flow looks like this

# GenDispatcher starts -> 8 workers started
# GenDispatcher receives work (`[1,2,3], fn(x) -> x * x end`)
# Each workers asks for 1 piece of work, after it's done, sends result back to dispatcher
# and asks for a new piece of work
# Dispatcher collects all the work, once it's finished, it sends the result to requester.

defmodule GenDispatcher do
  use GenServer
end

defmodule GenWorker do
end
