#!/usr/bin/env ruby

def amicable_sum(n)
  1.upto(n/2).select { |i| n % i == 0 }.inject(:+)
end

amicable_sums = Hash.new
1.upto(10000) do |i|
  amicable_sums[i] = amicable_sum(i)
end

l = []
amicable_sums.each do |k, v|
  l << k if amicable_sums[v] == k && k != v
end

puts l.inject(:+)