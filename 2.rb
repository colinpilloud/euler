#!/usr/bin/env ruby

class Solution2
  def initialize
    @fibo_map = { 1 => 1, 2 => 2 }
  end

  def fibonacci(n)
    unless @fibo_map.has_key?(n)
      @fibo_map[n] = fibonacci(n-1) + fibonacci(n-2)
    end
    @fibo_map[n]
  end
end

s = Solution2.new
# 35 is known to contain the limit for the problem (4 million)
# Clever way to calculate?
fibo_seq = (1..35).collect {|i| s.fibonacci(i) }
# Grab evens less than 4 million
even_fibo = fibo_seq.select { |fibo| fibo < 4000000 and fibo % 2 == 0 }
# Sum over even fibonaccis under 4 million
puts even_fibo.inject(:+)