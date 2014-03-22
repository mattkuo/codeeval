#!/usr/bin/env ruby

n = 0
result = []

File.open(ARGV[0]).each_with_index do |line, index|
  if index == 0
    n = line.to_i
    next
  end
  line.chomp!
  result << line
end

puts result.sort { |a, b| b.length <=> a.length }[0..n - 1]
