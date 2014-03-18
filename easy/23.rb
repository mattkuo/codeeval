#!/usr/bin/env ruby

12.times do |row|
  12.times do |col|
    result = (col + 1) * (row + 1)
    print col == 0 ? result : result.to_s.rjust(4)
  end
  print "\n"
end
