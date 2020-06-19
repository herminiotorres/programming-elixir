fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.puts("fizzbuzz.(0, 0, 1)")
IO.inspect(fizzbuzz.(0, 0, 1))

IO.puts("fizzbuzz.(0, 1, 2)")
IO.inspect(fizzbuzz.(0, 1, 2))

IO.puts("fizzbuzz.(1, 0, 2)")
IO.inspect(fizzbuzz.(1, 0, 2))

IO.puts("fizzbuzz.(1, 2, 3)")
IO.inspect(fizzbuzz.(1, 2, 3))
