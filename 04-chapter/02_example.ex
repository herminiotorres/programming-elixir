# tuple
IO.inspect({status, count, action} = {:ok, 42, "next"})
IO.inspect(status)
IO.inspect(count)
IO.inspect(action)
IO.inspect({status, file} = File.open("01_example.ex"))
IO.inspect({:ok, file} = File.open("01_example.ex"))

# {:error, :enoent}
# ** (MatchError) no match of right hand side value: {:error, :enoent}
# IO.inspect({:ok, file} = File.open("non-existent-file.ex"))
# IO.inspect({:error, message} = File.open("non-existent-file.ex"))
