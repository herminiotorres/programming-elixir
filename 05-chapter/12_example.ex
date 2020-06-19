# Pinned Values and Function Parameters
defmodule Greeter do
  def for(name, greeting) do
    fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't know you"
    end
  end
end

mr_valim = Greeter.for("José", "Oi!")

mr_valim.("José") |> IO.puts()
mr_valim.("Date") |> IO.puts()
