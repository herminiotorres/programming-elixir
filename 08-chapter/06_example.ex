# Pattern matching can't bind keys

%{2 => state} = %{1 => :ok, 2 => :error}
state |> IO.inspect()

# %{item => :ok} = %{1 => :ok, 2 => :error}
# ** (CompileError) iex:5: cannot use variable item as map key inside a pattern. Map keys in patterns can only be literals (such as atoms, strings, tuples, and the like) or an existing variable matched with the pin operator (such as ^some_var)
