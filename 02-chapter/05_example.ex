list = [1, 2, [3, 4, 5]]
IO.inspect(list)
# ​**​ (MatchError) no match of right hand side value: [1, 2, 3]
IO.inspect([a, 1, b] = list)
