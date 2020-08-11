map = %{name: "Dave", likes: "Programming", where: "Dallas"}
map |> IO.inspect()
map.name |> IO.inspect()

IO.puts("")
map1 = Map.drop(map, [:where, :likes])
map1 |> IO.inspect()
Map.has_key?(map1, :where) |> IO.inspect()

IO.puts("")
map2 = Map.put(map, :also_likes, "Ruby")
map2 |> IO.inspect()
Map.keys(map2) |> IO.inspect()

IO.puts("")
{value, updated_map} = Map.pop(map2, :also_likes)
value |> IO.inspect()
updated_map |> IO.inspect()
Map.equal?(map, updated_map) |> IO.inspect()
