set1 = 1..5 |> Enum.into(MapSet.new())
set1 |> IO.inspect()

IO.puts("")

set2 = 3..8 |> Enum.into(MapSet.new())
set2 |> IO.inspect()

IO.puts("")

MapSet.member?(set1, 3) |> IO.inspect()

IO.puts("")

MapSet.union(set1, set2) |> IO.inspect()

IO.puts("")

MapSet.difference(set1, set2) |> IO.inspect()

IO.puts("")

MapSet.difference(set2, set1) |> IO.inspect()

IO.puts("")

MapSet.intersection(set2, set1) |> IO.inspect()
