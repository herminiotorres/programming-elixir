list_concat = fn [a, b], [c, d] -> [a, b, c, d] end
IO.inspect(list_concat.([:a, :b], [:c, :d]))

sum = fn a, b, c -> a + b + c end
IO.inspect(sum.(1, 2, 3))

pair_tuple_to_list = fn {a, b} -> [a, b] end
IO.inspect(pair_tuple_to_list.({1234, 5678}))
