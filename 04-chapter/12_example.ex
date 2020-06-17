# the if and unless expression
IO.puts("IF")
IO.puts("")

line_no = 50

if line_no == 50 do
  IO.puts("new-page\f")
  line_no = 0
end

IO.puts(line_no)
IO.puts("")

if true do
  IO.puts("This works!")
end

IO.puts("")

unless true do
  IO.puts("This will never be seen")
end

IO.puts("")

if nil do
  IO.puts("This won't be seen")
else
  IO.puts("This will")
end

IO.puts("")

if true, do: IO.puts(1 + 2)

IO.puts("")

if false, do: IO.puts(:this), else: IO.puts(:that)

IO.puts("")

if true do
  a = 1 + 2
  a + 10
  IO.puts(a)
end

IO.puts("")

if true,
  do:
    (
      b = 1 + 2
      b + 10
      IO.puts(b)
    )
