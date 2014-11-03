#!/usr/bin/env ruby

require "bigdecimal"
require "prime"

longest_cycle = 0
target = 0

Prime.each(1000) do |i|
  s = (BigDecimal.new(1).div(BigDecimal.new(i), 2000)).to_s.gsub(/E\d+$/, "").chars.join(" ")
  match = s.match(/\b(\d+(:? \d+\b)+?)(?: \1)+\b/)

  if !match.nil?
    candidate = match[1].gsub(" ", "").length
    longest_cycle, target = candidate, i  if candidate > longest_cycle
  end
end

puts target
