#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  puts line.split(' ').sort_by { |num| num.to_f }.join(' ')
end
