#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  nums, code = line.split(' ')
  
  num_counter = 0
  code.length.times do |n|
    next unless code[n].match(/[[:alpha:]]/)
    code[n] = nums[num_counter]
    num_counter += 1
  end  
    
  operator = code.include?('+') ? :+ : :-
  
  lhs, rhs = code.split(/[+-]/)
  
  puts lhs.to_i.send(operator, rhs.to_i)
end

