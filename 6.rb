#!/usr/bin/env ruby

n = 100

puts (1..n).inject(:+)**2 - (1..n).map { |i| i**2 }.inject(:+)
