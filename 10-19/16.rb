#!/usr/bin/env ruby

puts (2**1000).to_s.each_char.to_a.map { |c| c.to_i }.inject(:+)
