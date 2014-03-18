#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  nums = line.split(',').map { |i| i.chomp }
  current = nums.first
  result = [nums.first]

  nums.each do |e|
    if e == current
      next
    else
      current = e
      result << e
    end
  end

  puts result.join(',')
end
