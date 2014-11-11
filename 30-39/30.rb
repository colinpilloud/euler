#!/usr/bin/env ruby

def sum_of_fifth_powers?(n)
  n == n.to_s.chars.map(&:to_i).inject(0) {|sum, digit| sum += digit**5 }
end

MAX = 9**5 * 6
puts (2..MAX).select {|i| sum_of_fifth_powers?(i) }.inject(:+)