#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  distances = line.chomp.split(';').map { |e| e.split(',')[1].to_i }.sort
  result = [distances[0]]

  distances.each_with_index do |e, i|
    next if i == 0
    result << e - distances[i - 1]
  end
  puts result.join(',')
end
