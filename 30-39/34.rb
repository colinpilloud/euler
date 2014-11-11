#!/usr/bin/env ruby

class Solution34
  def initialize
    @factorials = [1, 1, 2]
  end

  def fact(n)
    return @factorials[n] if @factorials[n]
    @factorials[n] = fact(n - 1) * n
  end

  def is_sum_of_digit_factorials?(n)
    n == n.to_s.chars.map(&:to_i).inject(0) {|r,d| r += fact(d) }
  end
end

s34 = Solution34.new
s34.fact(9) # populate fact map

puts (3..1e7).select {|i| s34.is_sum_of_digit_factorials? i }.inject(:+)