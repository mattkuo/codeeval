#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  puts line.split(' ')[-2]
end
