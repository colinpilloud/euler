#!/usr/bin/env ruby

require "set"

s = Set.new
2.upto(100).each do |a|
  2.upto(100).each do |b|
    s << a**b
  end
end

puts s.size