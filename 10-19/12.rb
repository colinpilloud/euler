#!/usr/bin/env ruby

class Integer
  def factors
      1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << i
      f << self/i unless i == self/i
      f
    end.sort
  end
end

n = 0
triangle_number = 0
while true
  n += 1
  triangle_number += n 
  break if triangle_number.factors.count >= 500
end

puts triangle_number
