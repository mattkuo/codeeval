#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?

  num, arr = line.split(';')
  num = num.to_i - 2
  arr = arr.split(',').map(&:to_i)

  sum = num * (num + 1) / 2

  puts -1 * arr.reduce(sum) { |a, e| a - e }
end
