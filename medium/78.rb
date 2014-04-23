#!/usr/bin/env ruby
require 'set'

class Sudoku
  def initialize(size, nums)
    @puzzle_size = size
    @grid = nums.split(',').map(&:to_i).each_slice(size).to_a
  end

  def valid?
    rows_valid? && cols_valid? && grids_valid?
  end

  private

  def rows_valid?
    set = Set[]
    @grid.each do |row|
      row.each { |e| set.add(e) }
      return false if set.size < @puzzle_size
      set = Set[]
    end
    true
  end

  def cols_valid?
    set = Set[]
    (0..@puzzle_size - 1).each do |col|
      (0..@puzzle_size - 1).each do |row|
        set.add(@grid[row][col])
      end
      return false if set.size < @puzzle_size
      set = Set[]
    end
    true
  end

  def grids_valid?
    sqrt_board = Math.sqrt(@puzzle_size)

    col_stop, row_stop = sqrt_board, sqrt_board
    col_counter, row_counter = 0, 0
    set = Set[]

    while col_counter < @puzzle_size
      while col_counter < col_stop
        set.add(@grid[row_counter][col_counter])
        col_counter += 1
      end

      col_counter -= sqrt_board
      row_counter += 1

      # Finished checking a grid
      if row_counter == row_stop
        return false unless set.size == @puzzle_size
        row_stop += sqrt_board
        set = Set[]
      end

      # We reach bottom of board
      if row_counter > @puzzle_size - 1
        row_counter = 0
        row_stop = sqrt_board
        col_counter += sqrt_board
        col_stop += sqrt_board
      end
    end
    true
  end
end

File.foreach(ARGV[0]) do |line|
  line.chomp!
  next if line.empty?
  size, nums = line.split(';')

  board = Sudoku.new(size.to_i, nums)

  puts board.valid? ? 'True' : 'False'

end
