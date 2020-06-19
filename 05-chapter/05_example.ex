# one function, multiple bodies
handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

path = "./05-chapter" |> Path.expand()
IO.puts("handle_open.(File.open('#{path}/04_example.ex'))")
IO.inspect(handle_open.(File.open("#{path}/04_example.ex")))

IO.puts("handle_open.(File.open('nonexistent'))")
IO.inspect(handle_open.(File.open("nonexistent")))
