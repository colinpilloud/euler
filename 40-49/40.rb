#!/usr/bin/env ruby

s, n = "", 0

while s.length <= 1e6
  s = s.concat(n.to_s)
  n += 1
end

puts (0..6).map {|p| s[10**p] }.map(&:to_i).inject(:*)