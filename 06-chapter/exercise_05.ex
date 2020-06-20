defmodule Greatest do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

"Greatest.gcd(0, 0)" |> IO.puts()
Greatest.gcd(0, 0) |> IO.inspect()

"Greatest.gcd(1, 0)" |> IO.puts()
Greatest.gcd(1, 0) |> IO.inspect()

"Greatest.gcd(3, 6)" |> IO.puts()
Greatest.gcd(3, 6) |> IO.inspect()

"Greatest.gcd(4, 6)" |> IO.puts()
Greatest.gcd(4, 6) |> IO.inspect()

"Greatest.gcd(5, 6)" |> IO.puts()
Greatest.gcd(5, 6) |> IO.inspect()

"Greatest.gcd(6, 6)" |> IO.puts()
Greatest.gcd(6, 6) |> IO.inspect()
