# the cond expression
IO.puts("COND")
IO.puts("")

cond do
  2 + 2 == 5 ->
    IO.puts("This will not be true")

  2 * 2 == 3 ->
    IO.puts("Nor this")

  1 + 1 == 2 ->
    IO.puts("But this will")
end

IO.puts("")

cond do
  2 + 2 == 5 ->
    IO.puts("This is never true")

  2 * 2 == 3 ->
    IO.puts("Nor this")

  true ->
    IO.puts("This is always true (equivalent to else)")
end

IO.puts("")

cond do
  hd([1, 2, 3]) ->
    IO.puts("1 is considered as true")
end
