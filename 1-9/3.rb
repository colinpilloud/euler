#!/usr/bin/env ruby

require 'prime'

def largest_prime_factor(n)
  n.prime_division[-1][0]  
end

p largest_prime_factor(600851475143)
