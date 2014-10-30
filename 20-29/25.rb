#!/usr/bin/env ruby

class Solution25
  def initialize
    @fibo_map = {1 => 1, 2 => 1}
  end

  def fibo(n)
    return @fibo_map[n] if @fibo_map[n]
    @fibo_map[n] = @fibo_map[n - 1] + @fibo_map[n - 2]

    if @fibo_map[n].to_s.size >= 1000
      puts n
      exit
    end

    @fibo_map[n]
  end
end

s25 = Solution25.new
1.upto(100000).each { |i| s25.fibo(i) }