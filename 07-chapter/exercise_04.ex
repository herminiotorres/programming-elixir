defmodule ListsAndRecursion do
  def span(_from, _to) do: []
  def span(from, to) when is_integer(from) and is_integer(to) and from >= 0 and to >= 0, do
    from..to
    |> Enum.map(& &1)
  end
end
