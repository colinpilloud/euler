#!/usr/bin/env ruby

require "set"

n = 28123

class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << i
      f << self/i unless i == self/i
      f
    end.sort - [self]
  end
end

# build a set of abundant numbers less than n
@abundant_set = (2..n).select do |i|
  i.factors.inject(:+) > i
end.to_set

def abundant_sum?(n)
  @abundant_set.each do |i|
    return true if @abundant_set.include?(n - i)
  end
  false
end

puts (1..n).select { |i| !abundant_sum? i }.inject :+