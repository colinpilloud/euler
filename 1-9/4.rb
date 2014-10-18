#!/usr/bin/env ruby

def is_palindrome(s)
  s.reverse.eql? s
end

max = 0;

999.downto(100) do |i|
  999.downto(100) do |j|
    product = i * j
    max = [max, product].max if is_palindrome(product.to_s)
  end
end

puts max 
