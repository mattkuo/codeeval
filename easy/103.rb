#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ').map { |e| e.to_i }

  hash = Hash.new(0)
  smallest = Float::INFINITY
  line.each { |e| hash[e] += 1 }

  hash.each_pair do |key, val|
    next if val > 1
    smallest = key if key < smallest
  end

  puts smallest == Float::INFINITY ? 0 : line.find_index(smallest) + 1
end
