cast = [
  %{
    character: "Buttercup",
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  %{
    character: "Westley",
    actor: %{
      first: "Cary",
      last: "Elwes"
    },
    role: "farm boy"
  }
]

get_in(cast, [Access.all(), :character]) |> IO.inspect()

IO.puts("")

get_in(cast, [Access.at(1), :role]) |> IO.inspect()

IO.puts("")

fun = fn val -> {val, String.upcase(val)} end
get_and_update_in(cast, [Access.all(), :actor, :last], & fun.(&1)) |> IO.inspect()
