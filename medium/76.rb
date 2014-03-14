#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  left, right = line.split(',')

  right = right.chomp * 2

  puts right.include?(left) ? 'True' : 'False'
end
