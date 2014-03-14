#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  values = line.split(/[\s\(\),]+/)
  a_x, a_y = values[1].to_i, values[2].to_i
  b_x, b_y = values[3].to_i, values[4].to_i

  puts Math.sqrt((b_x - a_x)**2 + (b_y - a_y)**2).to_i

end
