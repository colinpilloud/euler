#!/usr/bin/env ruby

def score(name)
  name.chars.map(&:ord).map { |i| i - 64 }.inject(:+)
end

File.open(File.expand_path("../../fixtures/names.txt", __FILE__), "r") do |f|
  names = f.read.gsub('"', "").split(",").sort
  puts names.each_with_index.map { |name, i| score(name) * (i + 1) }.inject(:+)
end
