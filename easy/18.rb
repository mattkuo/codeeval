#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  input = line.split(',').map { |i| i.to_i }
  n = input[1]

  n = n + input[1] while n < input[0]
  puts n
end
