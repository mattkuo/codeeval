#!/usr/bin/env ruby

def sieve(top)
  sieve = [nil, nil, *2..top]

  2.upto(Math.sqrt(top)) do |i|
    (i*i).step(top, i) do |j|
      sieve[j] = nil if sieve[i]
    end
  end
  sieve.compact
end

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?
  puts sieve(line.to_i - 1).join(',')
end
