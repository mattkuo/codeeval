#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  nums, swap_values = line.chomp.split(':')
  nums = nums.split(' ')
  swap_values = swap_values.split(',').map { |e| e.split('-') }

  swap_values.each do |e|
    nums[e[1].to_i], nums[e[0].to_i] = nums[e[0].to_i], nums[e[1].to_i]
  end

  puts nums.join(' ')
end
