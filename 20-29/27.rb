#!/usr/bin/env ruby

require "prime"

MIN = -999
MAX = 999

def longest_prime_seq(a, b)
  n = 0
  while (Prime.prime? (n**2 + a * n + b).abs)
    n += 1
  end
  n
end

longest_seq = 0
res_a = 0
res_b = 0

(MIN..MAX).each do |a|
  (MIN..MAX).each do |b|
    test = longest_prime_seq(a, b)
    longest_seq, res_a, res_b = test, a, b if test > longest_seq
  end
end

puts res_a * res_b
