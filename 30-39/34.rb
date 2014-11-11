#!/usr/bin/env ruby

@factorials = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

def is_sum_of_digit_factorials?(n)
  n == n.to_s.chars.map(&:to_i).inject(0) {|r,d| r += @factorials[d] }
end

MAX = 1854721 # http://en.wikipedia.org/wiki/Factorion#Upper_bound
puts (3..MAX).select {|i| is_sum_of_digit_factorials? i }.inject(:+)