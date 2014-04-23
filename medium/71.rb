#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  break if line.empty?
  nums, group = line.split(';')
  nums = nums.split(',').map(&:to_i)
  group = group.to_i

  result = []
  group_index = group - 1
  local_counter = group - 1

  while group_index < nums.size
    group.times do
      result << nums[local_counter]
      local_counter -= 1
    end
    group_index += group
    local_counter = group_index
  end

  result.concat(nums[group_index - group + 1..-1])

  puts result.join(',')

end