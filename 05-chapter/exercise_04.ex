prefix = fn prefix_name -> fn name -> "#{prefix_name} #{name}" end end

mrs = prefix.("Mrs")
IO.puts("mrs = prefix.('Mrs')")

IO.puts("mrs.('Smith')")
IO.inspect(mrs.("Smith"))

IO.puts("prefix.('Elixir').('Rocks')")
IO.inspect(prefix.("Elixir").("Rocks"))
