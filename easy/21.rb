#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  puts line.split('').reduce(0) { |a, e| a + e.to_i }
end
