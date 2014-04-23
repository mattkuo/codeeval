#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?

  text, clues = line.split(';')
  text = text.split(' ')
  clues = clues.split(' ').map(&:to_i)

  missing = (text.size * (text.size + 1) / 2) - clues.reduce(:+)
  clues << missing
  result = Array.new(text.size)

  clues.each_with_index { |e, i| result[e - 1] = text[i] }

  puts result.join(' ')
end
