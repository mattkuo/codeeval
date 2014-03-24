#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?
  sentence, word = line.split(',')

  regex = Regexp.new(word + '$')
  puts sentence.match(regex) ? '1' : '0'
end
