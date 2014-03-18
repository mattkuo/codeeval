#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  puts line.to_i(16)
end
