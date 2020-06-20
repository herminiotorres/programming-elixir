defmodule Calc do
  def sum(0), do: 0
  def sum(1), do: 1

  def sum(n) do
    sum(n, 0)
  end

  defp sum(0, acc), do: acc

  defp sum(n, acc) do
    sum(n - 1, acc + n)
  end
end

Calc.sum(0) |> IO.inspect()
Calc.sum(1) |> IO.inspect()
Calc.sum(5) |> IO.inspect()
Calc.sum(10) |> IO.inspect()
