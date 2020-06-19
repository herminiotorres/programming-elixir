fun1 = fn -> fn -> "Hello" end end
other = fun1.()
IO.puts("other = fun1.()")
IO.puts("other.()")
IO.inspect(other.())
