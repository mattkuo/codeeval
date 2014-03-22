#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  line = line.chomp

  0.upto(line.length - 1) do |i|
    if i == 0
      if line.count(line[i]) == line.length
        puts 1
        break
      end
    elsif 2 * i >= line.length
      puts line.length
      break
    elsif line[0, i] == line[(i + 1), i]
      puts i + 1
      break
    end
  end
end
