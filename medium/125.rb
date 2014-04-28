#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  num = line.chomp.to_i
  position = num

  times_to_convert = 0

  while position != 0
    position -= 2 ** Math.log(position, 2).to_i
    times_to_convert += 1
  end

  puts num == 0 ? num : times_to_convert % 3
end
