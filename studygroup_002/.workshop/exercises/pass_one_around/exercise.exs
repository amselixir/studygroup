defmodule Workshop.Exercise.PassOneAround do
  use Workshop.Exercise

  @title "Pass One Around"
  @weight 6000
  @description """
  We're going to 'encrypt' a message inside an anonymous function (which can be passed around).
  If the receiver can guess the password, they're shown the sent message, otherwise "sorry, topsecret"

  # What's next?
  Take a look into secrefier.exs and implement missing stuff. Try that stuff in IEx, see if you can
  unlock it without knowing the password. When you are done writing a solution it can be checked
  and verified using the `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Implement the encrypt/2 function which takes a password and message, returning a function (arity 1) which
  when called will return "sorry, topsecret" or the previous message if input matches password
  """

  @hint [
    "take a look at anonymous function, don't forget the dot between name and () => function.()"
  ]
end
