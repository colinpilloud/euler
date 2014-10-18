#!/usr/bin/env ruby

require "prime"

puts Prime.take_while {|p| p < 2e6.to_i }.inject(:+)
