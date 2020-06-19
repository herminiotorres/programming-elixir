fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

remainder = fn
  n -> fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts("remainder.(10)")
IO.inspect(remainder.(10))

IO.puts("remainder.(11)")
IO.inspect(remainder.(11))

IO.puts("remainder.(12)")
IO.inspect(remainder.(12))

IO.puts("remainder.(13)")
IO.inspect(remainder.(13))

IO.puts("remainder.(14)")
IO.inspect(remainder.(14))

IO.puts("remainder.(15)")
IO.inspect(remainder.(15))

IO.puts("remainder.(16)")
IO.inspect(remainder.(16))
