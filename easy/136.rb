#!/usr/bin/env ruby

result = ''
prev_path_index = nil
current_index = nil

File.foreach(ARGV[0]) do |line|
  line = line.chomp

  prev_path_index ||= line.index('C') || line.index('_')
  current_index = line.index('C') || line.index('_')

  path_char =
    if current_index < prev_path_index
      '/'
    elsif current_index > prev_path_index
      '\\'
    else
      '|'
    end

  line[current_index] = path_char
  result << line + "\n"
  prev_path_index = current_index
end

puts result
