cast = [
  %{
    character: "Buttercup",
    actor: {"Robin", "Wright"},
    role: "princess"
  },
  %{
    character: "Westley",
    actor: {"Carey", "Elwes"},
    role: "farm boy"
  }
]

get_in(cast, [Access.all(), :actor, Access.elem(1)]) |> IO.inspect()

IO.puts("")

fun = fn val -> {val, String.reverse(val)} end
get_and_update_in(cast, [Access.all(), :actor, Access.elem(1)], &(fun.(&1))) |> IO.inspect()
