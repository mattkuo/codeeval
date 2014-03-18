#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  digits = line.split('').map { |e| e.to_i }
  armstrong = digits.reduce(0) { |a, e| a + e**digits.length }
  puts armstrong == line.to_i ? 'True' : 'False'
end
