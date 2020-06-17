# binaries
IO.inspect(bin = <<1, 2>>)
IO.inspect(byte_size(bin))
IO.inspect(bin = <<3::size(2), 5::size(4), 1::size(2)>>)
IO.inspect(:io.format("~-8.2b~n", :binary.bin_to_list(bin)))
IO.inspect(byte_size(bin))
