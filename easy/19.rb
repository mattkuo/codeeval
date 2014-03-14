#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
	n, p1, p2 = line.split(',').map { |e| e.to_i }
	
	p1_mask = 2 ** (p1 - 1)
	p2_mask = 2 ** (p2 - 1)
	
	if (n & p1_mask) >> (p1 - 1) == (n & p2_mask) >> (p2 - 1)
	  puts 'true'
  else
    puts 'false'
  end
end

