defmodule Outer do
  defmodule Inner do
    def inner_func do
      IO.puts("call -> Inner.inner_func()")
    end
  end

  def outer_func do
    Inner.inner_func()
    IO.puts("call -> Outer.outer_func()")
  end
end

Outer.outer_func()
IO.puts("")
Outer.Inner.inner_func()
