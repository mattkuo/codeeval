#!/usr/bin/env ruby
file = ARGV[0]

IO.foreach(file) do |val|
  array = val.split(" ")
  current = array[0]
  count = 1
  result = []
  
  array.each_with_index do |val, index|
    next if index == 0
    if val == current
      count += 1
    else
      result << count << current
      current = val
      count = 1
    end
  end

  result << count << current

  puts result.join(" ")
end
