#!/usr/bin/env ruby

matrix = Array.new(256) { Array.new(256, 0) }

File.foreach(ARGV[0]) do |line|
  line.chomp!
  instruction = line.split(' ')

  case instruction[0]
  when 'SetRow'
    matrix[instruction[1].to_i].map! { instruction[2].to_i }
  when 'SetCol'
    matrix.each { |row| row[instruction[1].to_i] = instruction[2].to_i }
  when 'QueryRow'
    puts matrix[instruction[1].to_i].reduce(:+)
  when 'QueryCol'
    puts matrix.reduce(0) { |a, e| a + e[instruction[1].to_i] }
  else
    puts 'ERROR'
  end
end

