defmodule Guess do
  @moduledoc """
  A simple number guessing game.
  """

  @doc """
  Chooses secret number at random, then calls guess_and_check.
  Prints welcome/closing messages.
  """
  def play do
    secret_number = Enum.random(0..100)
    IO.puts "Welcome to a number guessing game in... elixir!"
    guess_count = guess_and_check(secret_number, 1)
    IO.puts "Yeah!! The secret number was #{secret_number}."
    IO.puts "You got it in #{guess_count} tries."
  end

  defp guess_and_check(secret_number, guess_count) do
    guess = get_guess()
    case guess do
      ^secret_number -> guess_count
      _ ->
        msg = if guess < secret_number, do: "higher!", else: "lower!"
        IO.puts "  You guessed #{guess}... Go #{msg}"
        guess_and_check(secret_number, guess_count+1)
    end
  end

  defp get_guess do
    guess = Integer.parse(IO.gets "Guess a number between 1 and 100: ")
    case guess do
      {n, _} when n in 1..100 -> n
      _ ->
        IO.puts "  Oops. That doesn't look like a valid guess..."
        get_guess()
    end
  end

end
