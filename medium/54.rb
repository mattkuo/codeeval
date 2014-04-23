#!/usr/bin/env ruby

$values = {
  0.01 => 'PENNY',
  0.05 => 'NICKEL',
  0.10 => 'DIME',
  0.25 => 'QUARTER',
  0.50 => 'HALF DOLLAR',
  1.00 => 'ONE',
  2.00 => 'TWO',
  5.00 => 'FIVE',
  10.0 => 'TEN',
  20.0 => 'TWENTY',
  50.0 => 'FIFTY',
  100.0 => 'ONE HUNDRED'
}

def find_largest_fit(num)
  max = 0
  $values.each_key do |key|
    max = key if key <= num
    break if key > num
  end
  max
end


File.foreach(ARGV[0]) do |line|
  line.chomp!
  break if line.empty?
  pp, ch = line.split(';').map(&:to_f)

  if ch == pp
    puts 'ZERO'
    next
  elsif ch < pp
    puts 'ERROR'
    next
  end

  result = []
  remainder = (ch - pp).round(2)

  while remainder > 0
    selected = find_largest_fit(remainder)
    remainder = (remainder - selected).round(2)
    result << $values[selected]
  end

  puts result.join(',')
end
