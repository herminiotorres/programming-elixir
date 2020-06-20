defmodule Chop do
  def guess(actual, first..last = range) do
    current_guessed = div(first + last, 2)
    IO.puts("Is it #{current_guessed}")
    guess_number(actual, current_guessed, range)
  end

  def guess_number(actual, current_guessed, _) when actual == current_guessed,
    do: actual |> IO.puts()

  def guess_number(actual, current_guessed, first..last = range) when current_guessed > actual,
    do: guess(actual, first..(current_guessed - 1))

  def guess_number(actual, current_guessed, first..last = range) when current_guessed < actual,
    do: guess(actual, (current_guessed + 1)..last)
end

Chop.guess(273, 1..1000)
