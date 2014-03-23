#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(';')
  center = line[0].split(' ')[1..2].map { |e| e.delete('()') }.map(&:to_f)
  radius = line[1].split(' ')[1].to_f
  point = line[2].split(' ')[1..2].map { |e| e.delete('()') }.map(&:to_f)

  dx = (point[0] - center[0]).abs
  dy = (point[1] - center[1]).abs

  hyp = Math.sqrt(dx**2 + dy**2)

  puts hyp <= radius ? 'true' : 'false'
end
