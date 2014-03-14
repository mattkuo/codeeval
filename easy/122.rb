#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  hash = {}
  ('a'..'j').each_with_index { |alpha, i| hash[alpha] = i.to_s }

  result = ''
  line.chomp.each_char do |char|
    if /[[:lower:]]/.match(char)
      next if hash[char].nil?
      result << hash[char]
    elsif /[[:digit:]]/.match(char)
      result << char
    end
  end

  puts result.empty? ? 'NONE' : result

end
