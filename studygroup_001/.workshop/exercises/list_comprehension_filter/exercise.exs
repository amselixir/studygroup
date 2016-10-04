defmodule Workshop.Exercise.ListComprehensionFilter do
  use Workshop.Exercise

  @title "List Comprehension Filter"
  @weight 5000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Lists are an important part of every functional language. Elixir supports
  list comprehension, used to generate and/or filter lists. The syntax is:
  for pattern <- generator/filter, [into: collector], do: transformation

  Write a function which takes three lists (let's say a,b and c) and returns
  every combination for which the Pythagoras rule applies (a^2 + b^2 = c^2)

  # What's next?
  Get the task for this exercise by executing `mix workshop.task`. When you are
  done writing a solution it can be checked and verified using the
  `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Write a function which takes three lists (let's say a,b and c) and returns
  every combination for which the Pythagoras rule applies (a^2 + b^2 = c^2)
  """

  @hint [
    "you can mix & match generators and filters, no worries :)",
    "take a look at the elixir-lang.org website, the getting started guide has a nice section on list comprehensions"
  ]
end
