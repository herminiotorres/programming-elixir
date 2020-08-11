#
# Concatenate lists
#
concatenate_list = [1,2,3] ++ [4,5,6]
concatenate_list |> IO.inspect()

#
# Flatten lists
#
List.flatten([[[1], 2], [[[3]]]]) |> IO.inspect()

#
# Folding (like reduce, but can choose direction)
#
fun = fn value, acc -> "#{value}(#{acc})" end

List.foldl(concatenate_list, "", &fun.(&1, &2)) |> IO.inspect()
List.foldr(concatenate_list, "", &fun.(&1, &2)) |> IO.inspect()

#
# Updating in the middle (not a cheap operation)
#
List.replace_at(concatenate_list, 3, "buckle my shoes") |> IO.inspect()

#
# Accessing tuples within lists
#
keywordlist = [{:name, "Dave"}, {:likes, "Programming"}, {:where, "Dallas", "TX"}]

List.keyfind(keywordlist, "Dallas", 1) |> IO.inspect()
List.keyfind(keywordlist, "TX", 2) |> IO.inspect()
List.keyfind(keywordlist, "TX", 1) |> IO.inspect()
List.keyfind(keywordlist, "TX", 1, "No city called TX") |> IO.inspect()

List.keydelete(keywordlist, "TX", 2) |> IO.inspect()

List.keyreplace(keywordlist, :name, 0, {:first_name, "Dave"}) |> IO.inspect()
