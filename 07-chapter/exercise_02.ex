defmodule ListsAndRecursion do
  def max([]), do: 0
  def max(list) do
    fun = fn num, acc ->
      cond do
        num >= acc -> num
        true -> acc
      end
    end

    list
    |> reduce(& fun.(&1, &2))
  end

  defp reduce(list, fun) do
    Enum.reduce(list, 0, & fun.(&1, &2))
  end
end
