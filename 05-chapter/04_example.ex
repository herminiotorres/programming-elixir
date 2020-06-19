# anonymous functions and pattern matching
swap = fn {a, b} -> {b, a} end
IO.puts("swap.({6, 8})")
IO.inspect(swap.({6, 8}))
