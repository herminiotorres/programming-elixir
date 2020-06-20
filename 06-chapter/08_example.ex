defmodule DefaultParams1 do
  def func(p1, p2 \\ 123) do
    IO.inspect([p1, p2])
  end

  def func(p1, 99) do
    IO.puts("you said 99")
  end
end

DefaultParams1.func("a", "b")
DefaultParams1.func("a")
DefaultParams1.func("a", 99)
