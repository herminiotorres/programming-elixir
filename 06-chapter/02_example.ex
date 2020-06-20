defmodule Times do
  def double(n), do: n * 2
end

Times.double(10) |> IO.inspect()
