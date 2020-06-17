# the case expression
IO.puts("CASE")
IO.puts("")

case {1, 2, 3} do
  {4, 5, 6} ->
    IO.puts("This clause won't match")

  {1, x, 3} ->
    IO.puts("This clause will match and bind x to 2 in this clause")

  _ ->
    IO.puts("This clause would match any value")
end

IO.puts("")

x = 1

case 10 do
  ^x -> IO.puts("Won't match")
  _ -> IO.puts("Will match")
end

IO.puts("")

case {1, 2, 3} do
  {1, x, 3} when x > 0 ->
    IO.puts("Will match")

  _ ->
    IO.puts("Would match, if guard condition were not satisfied")
end
