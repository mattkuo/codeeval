#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  n, m = line.split(',').map { |e| e.to_i }

  puts n - (n / m * m)
end
