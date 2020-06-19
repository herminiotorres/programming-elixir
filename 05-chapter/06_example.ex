# funcstions can returns functions
fun1 = fn -> fn -> "Hello" end end

# fun1 = fn ->
#          fn ->
#            "Hello"
#          end
#        end

IO.puts("fun1.()")
IO.inspect(fun1.())

IO.puts("fun1.().()")
IO.inspect(fun1.().())
