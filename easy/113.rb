#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  left, right = line.split('|')
  left = left.split(' ')
  right = right.split(' ')

  puts left.each_with_index.map { |e, i| e.to_i * right[i].to_i }.join(' ')
end
