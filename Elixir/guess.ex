defmodule Guess do
  @moduledoc """
  A simple number guessing game.
  """

  # Q: is it tail call optimized? Should use try/rescue instead?
  def get_guess do
    response = IO.gets "Guess a number between 1 and 100: "
    case Integer.parse(response) do
      {guess, _} -> guess
      :error ->
        IO.puts "  Oops. That doesn't look like an integer..."
        get_guess()
    end
  end

  @doc """
  Solicits user guess, then checks it against secret number
  Returns the number of guesses made
  """
  def guess_and_check(secret_number) do
    guess = get_guess()
    if guess == secret_number do
      1
    else
      msg = if guess < secret_number, do: "higher!", else: "lower!"
      IO.puts "  You guessed #{guess}... Go #{msg}"
      1 + guess_and_check(secret_number)
    end
  end

  def start do
    secret_number = Enum.random(0..100)
    IO.puts "Welcome to a number guessing game in... elixir!"
    guess_count = guess_and_check(secret_number)
    IO.puts "Yeah!! The secret number was #{secret_number}."
    IO.puts "You got it in #{guess_count} tries."
  end
end
