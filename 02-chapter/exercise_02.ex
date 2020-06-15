# ** (MatchError) no match of right hand side value: [1, 2, 3]
# IO.inspect([a, b, a] = [1, 2, 3])

# ** (MatchError) no match of right hand side value: [1, 1, 2]
# IO.inspect([a, b, a] = [1, 1, 2])

IO.inspect([a, b, a] = [1, 2, 1])
