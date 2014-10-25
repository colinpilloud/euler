#!/usr/bin/env ruby

n = 1000000

puts "0123456789".chars.permutation.lazy.drop(n - 1).first.join
