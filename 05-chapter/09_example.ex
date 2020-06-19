add_n = fn n -> fn other -> n + other end end

add_two = add_n.(2)
add_five = add_n.(5)
IO.puts("add_two = add_n.(2)")
IO.puts("add_five = add_n.(5)")

IO.puts("add_two.(3)")
IO.inspect(add_two.(3))
add_two.(3)

IO.puts("add_five.(7)")
IO.inspect(add_five.(7))
add_five.(7)
