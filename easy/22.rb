#!/usr/bin/env ruby
file = ARGV[0]

def fib(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

IO.foreach(file) do |line|
  puts fib(line.to_i)
end

    
    
