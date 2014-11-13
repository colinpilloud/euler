#!/usr/bin/env ruby

def palindrome?(s)
  s.eql? s.reverse
end

def double_base_palindrome?(n)
  palindrome?(n.to_s) && palindrome?(n.to_s(2))
end

puts (1..1e6).select {|n| double_base_palindrome? n }.inject(:+)