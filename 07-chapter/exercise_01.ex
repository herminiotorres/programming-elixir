defmodule ListsAndRecursion do
  def mapsum([], _fun), do: 0
  def mapsum(list, fun) do
    list
    |> reduce(& &2 + fun.(&1))
  end

  defp reduce(list, fun) do
    Enum.reduce(list, 0, & fun.(&1, &2))
  end
end
