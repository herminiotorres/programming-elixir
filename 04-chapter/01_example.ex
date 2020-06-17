# regex
IO.inspect(Regex.run(~r{[aeiou]}, "caterpillar"))
IO.inspect(Regex.scan(~r{[aeiou]}, "caterpillar"))
IO.inspect(Regex.split(~r{[aeiou]}, "caterpillar"))
IO.inspect(Regex.replace(~r{[aeiou]}, "caterpillar", "*"))
