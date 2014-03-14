#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  next if line.chomp.empty?
  encoded, key = line.split('|')
  key = key.split(' ').map { |e| e.to_i  }

  puts key.reduce(' ') { |a, e| a << encoded[e - 1] }

end
