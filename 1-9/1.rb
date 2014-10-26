#!/usr/bin/env ruby

class Solution1
  def initialize(n)
    @n = n
  end

  def sum_divisible_by(factor)
    p = @n / factor
    factor * (p * (p + 1)) / 2
  end

  def sum_sets_of_multiples(a, b)
    sum_divisible_by(a) + sum_divisible_by(b) - sum_divisible_by(a * b)
  end
end

puts Solution1.new(999).sum_sets_of_multiples(3, 5)