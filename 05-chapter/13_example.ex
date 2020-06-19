IO.puts("the & notation")
IO.puts("")

add_one = &(&1 + 1)
"add_one.(44)" |> IO.puts()
add_one.(44) |> IO.inspect()
IO.puts("")

square = &(&1 * &1)
"square.(8)" |> IO.puts()
square.(8) |> IO.inspect()
IO.puts("")

speak = &IO.puts(&1)
"speak.('Hello')" |> IO.puts()
speak.("Hello") |> IO.inspect()
IO.puts("")

# fn x, y -> x + y end
sum = &(&1 + &2)
"sum.(2,3)" |> IO.puts()
sum.(2, 3) |> IO.inspect()
IO.puts("")

elixir_abs = &abs(&1)
erlang_abs = &:erlang.abs/1

"elixir_abs.(-10)" |> IO.puts()
elixir_abs.(-10) |> IO.inspect()
"erlang_abs.(-100)" |> IO.puts()
erlang_abs.(-100) |> IO.inspect()
IO.puts("")

divrem = &{div(&1, &2), rem(&1, &2)}
"divrem.(13,5)" |> IO.puts()
divrem.(13, 5) |> IO.inspect()
IO.puts("")

s = &"bacon and #{&1}"
"s.('custard')" |> IO.puts()
s.("custard") |> IO.inspect()
IO.puts("")

match_and = &~r/.*#{&1}$/
"'cat' =~ match_and.('t')" |> IO.puts()
IO.puts("cat" =~ match_and.("t"))
"'cat' =~ match_and.('!')" |> IO.puts()
IO.puts("cat" =~ match_and.("!"))
IO.puts("")

l = &length/1
"l.([1, 3, 5, 7])" |> IO.puts()
l.([1, 3, 5, 7]) |> IO.inspect()
IO.puts("")

len = &Enum.count/1
"len.([1, 2, 4, 6, 8])" |> IO.puts()
len.([1, 2, 4, 6, 8]) |> IO.inspect()
IO.puts("")

m = &Kernel.min/2
"m.(99, 88)" |> IO.puts()
m.(99, 88) |> IO.inspect()
IO.puts("")

list = [1, 2, 4, 6, 8]
IO.puts("List:")
list |> IO.inspect()
IO.puts("")

IO.puts("List element + element")
Enum.map(list, &(&1 + &1)) |> IO.inspect()
IO.puts("")

IO.puts("List element * element")
Enum.map(list, &(&1 * &1)) |> IO.inspect()
IO.puts("")

IO.puts("List element < 5")
Enum.map(list, &(&1 < 5)) |> IO.inspect()
