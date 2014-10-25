#!/usr/bin/env ruby

def factorial(n)
  n.downto(1).inject(:*)
end

def lattice_paths(n)
  factorial(2 * n) / factorial(n) ** 2
end

puts lattice_paths(20)