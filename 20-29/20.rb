#!/usr/bin/env ruby

def factorial(n)
  n.downto(1).inject(:*)
end

def sum_of_digits(n)
  n.to_s.chars.map(&:to_i).inject(:+)
end

puts sum_of_digits(factorial 100)
