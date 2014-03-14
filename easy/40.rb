#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  digits = line.chomp.split('').map! { |e| e.to_i }
  hash = Hash.new(0)

  digits.each { |e| hash[e] += 1 }

  is_self_describing = true
  digits.each_with_index { |e, i| is_self_describing = false if hash[i] != e }
  puts is_self_describing ? 1 : 0
end
