#!/usr/bin/env ruby

$months = {
  'Jan' => 0,
  'Feb' => 1,
  'Mar' => 2,
  'Apr' => 3,
  'May' => 4,
  'Jun' => 5,
  'Jul' => 6,
  'Aug' => 7,
  'Sep' => 8,
  'Oct' => 9,
  'Nov' => 10,
  'Dec' => 11
}

class Worktime

  def initialize(str)
    start_date, end_date = str.split('-')
    @start_month, @start_year = start_date.split(' ')
    @start_year = @start_year.to_i
    @end_month, @end_year = end_date.split(' ')
    @end_year = @end_year.to_i
  end

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?

  arr = line.split(';')



end