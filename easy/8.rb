file = ARGV[0]

IO.foreach(file) do |sentence|
	puts sentence.split(" ").reverse! * " "
end