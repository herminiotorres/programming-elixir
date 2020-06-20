defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: n * 4
end

"Times.double(10)" |> IO.puts()
Times.double(10) |> IO.inspect()
"Times.triple(10)" |> IO.puts()
Times.triple(10) |> IO.inspect()
"Times.quadruple(10)" |> IO.puts()
Times.quadruple(10) |> IO.inspect()
