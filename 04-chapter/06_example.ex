# accessing a map
IO.inspect(states = %{ ​"​​AL"​ => ​"​​Alabama"​, ​"​​WI"​ => ​"​​Wisconsin"​ })
IO.inspect(states["AL"])
IO.inspect(states[​"​​TX"​])

IO.inspect(response_types = %{{:error, :enoent} => :fatal, {:error, :busy} => :retry})
IO.inspect(response_types[{:error, :enoent}])
IO.inspect(response_types[{:error, :busy}])

IO.inspect(colors = %{ ​red:​ 0xff0000, ​green:​ 0x00ff00, ​blue:​ 0x0000ff })
IO.inspect(colors[:red])
IO.inspect(colors.red)
# You’ll get a KeyError if there’s no matching key when you use the dot notation.
