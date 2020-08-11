options = [{:width, 72}, {:style, "light"}, {:style, "print"}]
options |> IO.inspect()

IO.puts("")

List.last(options) |> IO.inspect()

IO.puts("")

Keyword.get_values(options, :style) |> IO.inspect()
