person = %{name: "Dave", height: 1.88}
person |> IO.inspect()

%{name: a_name} = person
IO.puts("")
a_name |> IO.inspect()

IO.puts("")
%{name: _, height: _} = person

IO.puts("")
%{name: "Dave"} = person

IO.puts("")
# %{name: _, weight: _} = person
# => ** (MatchError) no match of right hand side value: %{height: 1.88, name: "Dave"}]
