defmodule ListsAndRecursion do
  def ceaser([], _salt), do: ""
  def ceaser(charlist, salt) do
    fun = fn char, salt ->
      cond do
        (char + salt) > ?z -> ?a + ((char + salt) - ?z)
        true -> char + salt
      end
    end

    charlist
    |> Enum.map(& fun.(&1, salt))
  end
end
