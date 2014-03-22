#!/usr/bin/env ruby
require 'json'

def sum_id(json)
  return 0 if json.class == String || json.nil?
  sum = 0

  json.each do |k, v|
    if k == 'items'
      v.each do |hash|
        sum += hash['id'] if !hash.nil? && hash.key?('label')
      end
    else
      sum += sum_id(v)
    end
  end

  sum
end

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?
  json = JSON.parse(line)
  puts sum_id(json)
end
