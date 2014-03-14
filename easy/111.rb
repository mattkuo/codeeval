#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  puts line.split(' ').reduce { |a, e| e.length > a.length ? e : a }
end
