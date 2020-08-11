data1 = %{name: "Elixir", creator: "Valim"}
data2 = [name: "Elixir", creator: "Valim"]

Access.pop(data1, :name) |> IO.inspect()

IO.puts("")

Access.pop(data2, :name) |> IO.inspect()

IO.puts("")

Access.pop(data1, :year) |> IO.inspect()
