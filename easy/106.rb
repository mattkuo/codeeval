#!/usr/bin/env ruby

hash = {
  1000 => 'M',
  900  => 'CM',
  500  => 'D',
  400  => 'CD',
  100  => 'C',
  90   => 'XC',
  50   => 'L',
  40   => 'XL',
  10   => 'X',
  9    => 'IX',
  5    => 'V',
  4    => 'IV',
  1    => 'I'
}

File.foreach(ARGV[0]) do |line|
  number = line.to_i
  result = ''

  hash.each_pair do |key, symbol|
    if number >= key
      result << symbol * (number / key)
      number = number % key
    end
  end

  puts result
end
