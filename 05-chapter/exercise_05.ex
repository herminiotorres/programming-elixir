# Enum.map [1,2,3,4], fn x -> x + 2 end
# Enum.each [1,2,3,4], fn x -> IO.inspect x end

list = [1, 2, 3, 4]
Enum.map(list, &(&1 + 2)) |> IO.inspect()
Enum.each(list, &IO.inspect/1)
