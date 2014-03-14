file = ARGV[0]

IO.foreach(file) do |num|
	digits = Integer(num)
	sum = 0
	past = Array.new << digits

	while true do

		while digits != 0 do
			digit = digits % 10
			digits = digits / 10

			sum += digit**2
		end

		if sum == 1
			puts 1
			break
		elsif past.include?(sum)
			puts 0
			break
		else
			digits = sum
			past << sum
			sum = 0
		end
	end
end

