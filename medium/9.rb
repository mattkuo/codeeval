#!/usr/bin/env ruby

class Stack
  def initialize
    @stack = []
  end

  def push(n)
    @stack << n
  end

  def pop
    @stack.pop
  end

  def empty?
    @stack.empty?
  end
end

File.foreach(ARGV[0]) do |line|
  line.chomp!
  line = line.split.map(&:to_i)

  stack = Stack.new
  line.each { |e| stack.push(e) }

  pop = true
  result = []
  until stack.empty?
    item = stack.pop
    result << item if pop
    pop = !pop
  end

  puts result.join(' ')
end