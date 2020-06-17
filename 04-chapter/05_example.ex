# maps
IO.inspect(state = %{"AL" => "Alabama", "WI" => "Wisconsin"})
IO.inspect(responses = %{{:error, :enoent} => :fatal, {:error, :busy} => :retry})
IO.inspect(colors = %{:red => 0xff0000, ​:green​ => 0x00ff00, ​:blue​ => 0x0000ff})
IO.inspect(%{"one" => 1, :two => 2, {1,1,1} => 3})
IO.inspect(colors = ${red:​ 0xff0000, ​green:​ 0x00ff00, ​blue:​ 0x0000ff})
IO.inspect(name = "José Valim")
IO.inspect(%{String.downcase(name) => name})
