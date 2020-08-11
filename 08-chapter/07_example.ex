# Pattern matching can match variable keys

data = %{name: "Dave", state: "TX", likes: "Elixir"}
data |> IO.inspect()

IO.puts("")

for key <- [:name, :likes] do
  %{ ^key => value } = data
  IO.puts(value)
end
