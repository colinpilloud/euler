#!/usr/bin/env ruby

class Solution14
  def initialize
    @counts_hash = Hash.new
    @counts_hash[1] = 0
  end

  def collatz(n)
    if n % 2 == 0
      c = n / 2
    else
      c = 3 * n + 1
    end

    if !@counts_hash[c].nil?
      @counts_hash[n] = @counts_hash[c] + 1 
      return @counts_hash[n]
    else
      @counts_hash[n] = collatz(c) + 1
    end
  end

  def longest_sequence_in_range(r)
    r.each do |i|
      collatz i
    end
    @counts_hash.max_by{ |k,v| v }[0]
  end
end

puts Solution14.new.longest_sequence_in_range(1..1e6.to_i)
