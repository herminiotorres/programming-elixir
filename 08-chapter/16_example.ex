cast = %{
  buttercup: %{
    actor: {"Robin", "Wright"},
    role: "princess"
  },
  westley: %{
    actor: {"Carey", "Elwes"},
    role: "farm boy"
  }
}

get_in(cast, [Access.key(:westley), :actor, Access.elem(1)]) |> IO.inspect()

IO.puts("")

fun = fn val -> {val, "Queen"} end
get_and_update_in(cast, [Access.key(:buttercup), :role], &(fun.(&1))) |> IO.inspect()
