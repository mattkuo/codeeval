#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  string, char = line.split(',').map! { |e| e.chomp }

  found = false
  -1.downto(-string.length) do |e|
    if string[e] == char
      found = true
      puts string.length + e
      break
    end
  end
  puts(-1) unless found
end
