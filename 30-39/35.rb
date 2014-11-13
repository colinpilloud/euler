#!/usr/bin/env ruby

require "prime"

MAX = 1e6

def cycles(s)
  (0...s.length).collect {|i| (s * 2)[i, s.length] }
end

def is_circular?(n)
  return true if n == 2 || n == 5
  return false if n.to_s =~ /\d*[245680]\d*/
  cycles(n.to_s).reduce(true) {|r,e| r && Prime.prime?(e.to_i) }
end

puts (1..MAX).select {|n| is_circular? n }.length
