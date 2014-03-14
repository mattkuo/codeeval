file = ARGV[0]

IO.foreach(file) do |num|
	if Integer(num) % 2 == 0
		puts "1"
	else
		puts "0"
	end
end