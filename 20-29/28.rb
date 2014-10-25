#!/usr/bin/env ruby

def spiral_diagonal_sums(n)
  a = []
  a += (1..n).step(2).map {|i| i**2} # upper right
  a += (0..n/2).map {|i| (2*i)**2 + 1 } # lower left
  a += (0..n/2).map {|i| (2*i)**2 - (2*i - 1)} # lower right
  a += (0..n/2).map {|i| (2*i)**2 + (2*i + 1)} # upper left
  a.uniq.inject(:+)
end

puts spiral_diagonal_sums(1001)
