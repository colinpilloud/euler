#!/usr/bin/env ruby

def multiples_up_to(multiple, limit)
  (1..limit - 1).select { |x| x % multiple == 0}
end

threes = multiples_up_to(3, 1000)
fives = multiples_up_to(5, 1000)

puts (threes | fives).inject(:+)