defmodule Workshop.Meta do
  use Workshop.Info

  # The human readable title of the workshop.
  @title "Amsterdam |> Elixir Studygroup week 003"

  # The version number is used to verify what version of the workshop the user
  # is running.
  @version "0.0.1"
  @generator_version "0.5.1"
  @home "https://github.com/amselixir/studygroup"

  # An optional short description of the workshop. Will get shown at places
  # where the long description would not fit, such as the `mix workshop` screen.
  # Set this to `false` if you want to suppress the missing shortdesc warning.
  @shortdesc @title

  # The description should state what the user will learn from this workshop.
  # Perhaps mention the intended audience.
  @description """
  These are the assignments for third gathering of Amsterdams Elixir studygroup.
  This  time we should learn more about Processes, conucrrency, GenServer and Tasks
  """

  # The introduction should welcome the user to the workshop, set the
  # expectations, and inform the user to execute the next-command to get to the
  # first exercise.
  @introduction """
  Welcome to this Elixir workshop. This workshop is targeted at people who are
  starting out with Elixir. I presume you have installed Elixir and this workshop mix task.

  I case you haven't installed Elixir, try: `brew install elixir`. After that
  you should install the required mix archive with: `mix archive.install workshop*.ez`
  You can check if everything is ok with `mix workshop.validate`.

  Once you're setup let's get started. At the beginning of each exercise you'll
  see a description (which you can later check with `mix workshop.task`). If you're
  stuck, you can request a hint `mix workshop.hint`. Once you're sure you have completed
  your exercise check it with `mix workshop.check`. If all is well you can procede with
  `mix workshop.next`.

  So let's get to it, issue `mix workshop.next` to get this party started :)
  """

  # The debriefing message will get shown when the workshop is over.
  # This would be a good opportunity to congratulate the user; perhaps thank the
  # user and; and ask for feedback.
  @debriefing """
  You have completed the last exercise. Congratulations!
  """
end
