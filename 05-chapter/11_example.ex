list = [1, 3, 5, 7, 9]

"# => List:" |> IO.puts()
list |> IO.inspect()
IO.puts("")

"# => List: element * 2" |> IO.puts()
Enum.map(list, fn elem -> elem * 2 end) |> IO.inspect()
IO.puts("")

"# => List: element * element" |> IO.puts()
Enum.map(list, fn elem -> elem * elem end) |> IO.inspect()
IO.puts("")

"# => List: element > 6" |> IO.puts()
Enum.map(list, fn elem -> elem > 6 end) |> IO.inspect()
