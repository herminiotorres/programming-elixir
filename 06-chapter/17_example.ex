IO.puts(is_atom(IO))
IO.puts(to_string(IO))
IO.puts(:"Elixir.IO" === IO)
IO.puts(123)
:"Elixir.IO".puts(456)
my_io = IO
my_io.puts(789)
# erlang
:io.format("The number is ~3.1f~n", [5.678])
