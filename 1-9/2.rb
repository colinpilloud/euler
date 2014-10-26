#!/usr/bin/env ruby

class Solution2
  def initialize
    @fibo_map = { 1 => 2, 2 => 8 }
  end

  def even_fibonacci(n)
    return @fibo_map[n] if @fibo_map.has_key? n
    @fibo_map[n] = 4 * even_fibonacci(n-1) + even_fibonacci(n-2)
  end
end

s = Solution2.new
puts (1..12).map { |i| s.even_fibonacci(i) }.select { |f| f < 4e6.to_i }.inject(:+)