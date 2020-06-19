f1 = fn a, b -> a * b end
IO.puts("f1.(5, 6)")
IO.inspect(f1.(5, 6))

f2 = fn -> 99 end
IO.puts("f2.()")
IO.inspect(f2.())
