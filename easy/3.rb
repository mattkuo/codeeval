#!/usr/bin/env ruby

def prime?(n)
  return true if n == 2
  return false if n.even? || n <= 1
  Range.new(3, Math.sqrt(n).to_i + 1).step(2) do |x|
    return false if n % x == 0
  end
  true
end

999.downto(2) do |i|
  if prime?(i)
    string = i.to_s
    if string[0] == string[-1]
      puts i
      break
    end
  end
end
