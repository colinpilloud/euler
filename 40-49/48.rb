#!/usr/bin/env ruby

puts (1..1000).inject(0) {|r,s| r+= s**s }.to_s[-10,10]
