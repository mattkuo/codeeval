#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  lhs, rhs = line.split(';').map { |e| e.split(',') }

  intersect = (lhs & rhs)
  puts intersect.join(',')
end
