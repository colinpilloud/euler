#!/usr/bin/env ruby

require "set"

s = Set.new
2.upto(1000).each do |a|
  2.upto(1000).each do |b|
    s << a**b
  end
end

puts s.size