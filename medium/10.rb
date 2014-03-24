#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?

  chars = line.split(' ')
  n = chars.delete_at(-1).to_i * -1

  puts chars[n]
end
