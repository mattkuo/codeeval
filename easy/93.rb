#!/usr/bin/env ruby
file = ARGV[0]

IO.foreach(file) do |row|
  array = row.split(" ")
  array.each do |word|
    word[0] = word[0].upcase
  end

  puts array.join(" ")
end
    
