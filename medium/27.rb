#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  puts line.chomp.to_i.to_s(2)
end
