defmodule Workshop.Meta do
  use Workshop.Info

  @title "Elixir Studygroup 004"
  @version "0.0.1"
  @generator_version "0.5.1"
  @home "https://github.com/amselixir/studygroup"
  @shortdesc "A starter workshop to learn some Elixir and (very basic) ML"
  @description @shortdesc

  # The introduction should welcome the user to the workshop, set the
  # expectations, and inform the user to execute the next-command to get to the
  # first exercise.
  @introduction """
  This is the introduction and it will get displayed when the workshop has been
  started.

  Don't forget to inform the user to write `mix workshop.next` to get to the
  first exercise.
  """

  # The debriefing message will get shown when the workshop is over.
  # This would be a good opportunity to congratulate the user; perhaps thank the
  # user and; and ask for feedback.
  @debriefing """
  You have completed the last exercise. Congratulations!

  Now would be a good time to package these exercises into a project. Some suggestions:
  - use Ecto/DB to store tweets and unigrams
  - use ExTwitter package or write your own to fetch new tweets (use :) as positve, :( as negative search term)
  - write some mix tasks to fetch, tokenize, store and classify tweets
  - depending on your desires use GenServers, GenStage and/or Umbrella apps
  - write a web frontend using plugs/phoenix
  - replace the unigram code to enable N-Grams (parametirazible)
  - something else (plz share your ideas)
  """
end
