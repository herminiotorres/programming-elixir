defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n - 1)
end

"Factorial.of(3)" |> IO.puts()
Factorial.of(3) |> IO.inspect()

"Factorial.of(7)" |> IO.puts()
Factorial.of(7) |> IO.inspect()

"Factorial.of(10)" |> IO.puts()
Factorial.of(10) |> IO.inspect()

"Factorial.of(1000)" |> IO.puts()
Factorial.of(1000) |> IO.inspect()
