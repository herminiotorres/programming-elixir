a = 1
IO.inspect(a)
IO.inspect(a + 3)
IO.inspect(a = 1)
IO.inspect(1 = a)
# ​**​ (MatchError) no match of right hand side value: 1
IO.inspect(2 = a)
