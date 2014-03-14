
file = ARGV[0]

sum = 0
IO.foreach(file) do |num|
	sum += Integer(num)
end

puts sum