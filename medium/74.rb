#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  num = line.to_i
  coins = 0
  
  if num / 5 > 0
    coins += num / 5
    num = num % 5
  end

  if num / 3 > 0
    coins += num / 3
    num = num % 3
  end

  coins += num
  
  puts coins
end

