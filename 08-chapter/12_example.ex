nested = %{
  buttercup: %{
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  westley: %{
    actor: %{
      first: "Cary",
      last: "Elwez" # TYPO!
    },
    role: "farm boy"
  }
}

get_in(nested, [:buttercup]) |> IO.inspect()

IO.puts("")

get_in(nested, [:buttercup, :actor]) |> IO.inspect()

IO.puts("")

get_in(nested, [:buttercup, :actor, :first]) |> IO.inspect()

IO.puts("")

put_in(nested, [:westley, :actor, :last], "Elwes") |> IO.inspect()

IO.puts("")
