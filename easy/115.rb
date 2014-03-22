#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(',')
  words = []
  nums = []

  line.each do |e|
    e.match(/[[:alpha:]]/) ? words << e : nums << e
  end

  print words.join(',')
  print '|' unless words.empty? || nums.empty?
  puts nums.join(',')
end
