file = ARGV[0]

IO.foreach(file) do |word|
	word.each_char do |char|
		if word.count(char) == 1
			puts char
			break
		end
	end
end
