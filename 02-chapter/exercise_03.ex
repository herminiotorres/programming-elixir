# ** (MatchError) no match of right hand side value: [1, 2, 3]
# IO.inspect([a, b, a] = [1, 2, 3])

# ** (MatchError) no match of right hand side value: [1, 1, 3]
# IO.inspect([a, b, a] = [1, 1, 3])

IO.inspect(a = 1)
# ** (MatchError) no match of right hand side value: 2
# IO.inspect(^a = 2)
IO.inspect(^a = 1)
IO.inspect(^a = 2 - a)
