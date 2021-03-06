#!/usr/bin/env ruby

require "set"

pandigital_numbers = Set.new

def is_pandigital?(n)
  n.to_s.chars.sort.join.eql? "123456789"
end

def is_product_pandigital?(n, m)
  is_pandigital?(n.to_s + m.to_s + (n*m).to_s)
end

100.upto(999).each do |a|
  10.upto(99).each do |b|
    pandigital_numbers << (a*b) if is_product_pandigital?(a, b)
  end
end

1000.upto(9999).each do |a|
  1.upto(9).each do |b|
    pandigital_numbers << (a*b) if is_product_pandigital?(a, b)
  end
end

puts pandigital_numbers.inject(:+)