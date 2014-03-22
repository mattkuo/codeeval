#!/usr/bin/env ruby

hash = {
  'zero'  => 0,
  'one'   => 1,
  'two'   => 2,
  'three' => 3,
  'four'  => 4,
  'five'  => 5,
  'six'   => 6,
  'seven' => 7,
  'eight' => 8,
  'nine'  => 9
}

File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(';')
  puts line.reduce([]) { |a, e| a << hash[e] }.join
end
