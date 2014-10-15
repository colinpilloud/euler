#!/usr/bin/env ruby

require 'prime'

n = 20
prime_multiple = Prime.each(n).inject(1, :*)

(1..2*n).each do |i|
  candidate = i * prime_multiple
  if (1..n).inject { |r,e| r && candidate % e == 0 }
    puts candidate
    exit
  end
end
