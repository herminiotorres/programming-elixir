IO.inspect(a = [1, 2, 3])
IO.inspect(a = 4)
IO.inspect(4 = a)
# ** (MatchError) no match of right hand side value: [1, 2, 3]
# IO.inspect([a, b] = [1, 2, 3])
IO.inspect(a = [[1, 2, 3]])
IO.inspect([a] = [[1, 2, 3]])
# ** (MatchError) no match of right hand side value: [[1, 2, 3]]
# IO.inspect([[a]] = [[1, 2, 3]])
