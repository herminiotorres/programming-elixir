# operators
#
# Comparison operators
IO.inspect("Comparison operators")
IO.inspect({a, b} = {1, 1.0})
IO.inspect(a === b)
IO.inspect(a !== b)
IO.inspect(a == b)
IO.inspect(a != b)
IO.inspect("")
# normal comparison
IO.inspect("normal comparison")
IO.inspect(a > b)
IO.inspect(a >= b)
IO.inspect(a < b)
IO.inspect(a <= b)
IO.inspect("")
# Order by precedence
# number
# atom
# reference
# function
# port
# pid
# tuple
# map
# list
# binary
#
# Boolean operators
IO.inspect("Boolean operators")
IO.inspect({a, b} = {true, false})
IO.inspect(a or b)
IO.inspect(a and b)
IO.inspect(not a)
IO.inspect("")
# Relaxed Boolean operators
IO.inspect("Relaxed Boolean operators")
IO.inspect({a, b} = {true, false})
IO.inspect(a || b)
IO.inspect(a && b)
IO.inspect(!a)
IO.inspect("")
# Arithmetic operators
IO.inspect("Arithmetic operators")
IO.inspect({a, b} = {2, 6})
IO.inspect(a + b)
IO.inspect(a - b)
IO.inspect(a * b)
IO.inspect(a / b)
IO.inspect(div(a, b))
IO.inspect(rem(a, b))
IO.inspect("")
# Join operators
IO.inspect("Join operators")
IO.inspect({hello, world} = {"hello", "world"})
IO.inspect(hello <> " " <> world)
IO.inspect(list1 = [1])
IO.inspect(list2 = [2])
IO.inspect(list1 ++ list2)
IO.inspect(list3 = [1, 2, 3, 4])
IO.inspect(list4 = [4])
IO.inspect(list3 -- list4)
IO.inspect("")
# The in operator
# a ​in​ enum
IO.inspect("The in operator")
IO.inspect(1 in list3)
