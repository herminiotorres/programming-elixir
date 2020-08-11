# update a map

map = %{a: 1, b: 2, c: 3}
map |> IO.inspect()

IO.puts("")

map1 = %{ map | b: "two", c: "three"}
map1 |> IO.inspect()

IO.puts("")

map2 = %{ map1 | a: "one"}
map2 |> IO.inspect()
