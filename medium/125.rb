#!/usr/bin/env ruby

conversion = {'0' => '1', '1' => '2', '2' => '0'}

File.foreach(ARGV[0]) do |line|
  num = line.chomp.to_i
  str = '0'

  while str.length < num
    str.each_char { |c| str << conversion[c] }
  end

  puts str[num]
end
