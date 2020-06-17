# date and times
IO.inspect(d1 = Date.new(2018, 12, 25))
IO.inspect({:ok, d1} = Date.new(2018, 12, 25))
IO.inspect(d2 = ~D[2018-12-25])
IO.inspect(d1 == d2)

IO.inspect(Date.day_of_era(d1))
IO.inspect(Date.day_of_week(d1))
IO.inspect(Date.day_of_year(d1))
IO.inspect(Date.days_in_month(d1))

IO.inspect(Date.add(d1, 7))

IO.inspect(d1, structs: false)

IO.inspect(d1 = ~D[2018-01-01])
IO.inspect(d2 = ~D[2018-06-30])
IO.inspect(first_half = Date.range(d1, d2))
IO.inspect(Enum.count(first_half))
IO.inspect(~D[2018-03-15] in first_half)

IO.inspect({:ok, t1} = Time.new(12, 34, 56))
IO.inspect(t2 = ~T[12:34:56.78])
IO.inspect(t1 == t2)
IO.inspect(Time.add(t1, 3600))
IO.inspect(Time.add(t1, 3600, :millisecond))
