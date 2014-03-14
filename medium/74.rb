#!/usr/bin/env ruby

File.foreach(ARGV[0]) do |line|
  num = line.to_i
  coins = 0

  coins += num / 5

