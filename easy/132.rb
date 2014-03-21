#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  array = line.split(',')

  hash = Hash.new(0)
  major = 'None'
  array.each do |e|
    hash[e] += 1
    if hash[e] >= array.length / 2
      major = e
      break
    end
  end
  puts major
end
