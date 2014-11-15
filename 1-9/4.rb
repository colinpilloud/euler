#!/usr/bin/env ruby

def is_palindrome(s)
  s.reverse.eql? s
end

max = 0;

999.downto(100) do |i|
  i % 11 == 0 ? (j, dj = 999, 1) : (j, dj = 990, 11)

  while j >= i
    product = i * j
    max = [max, product].max if is_palindrome(product.to_s)
    j -= dj
  end
end

puts max