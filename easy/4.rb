#!/usr/bin/env ruby

def prime?(n)
  return true if n == 2
  return false if n.even? || n <= 1
  Range.new(3, Math.sqrt(n).to_i + 1).step(2) do |x|
    return false if n % x == 0
  end
  true
end

def get_prime(n)
  Enumerator.new do |enum|
    loop do
      enum.yield(n) if prime? n
      n += 1
    end
  end
end

sum = 0
enum = get_prime(2)

1_000.times { sum += enum.next }

puts sum
