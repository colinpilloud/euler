#!/usr/bin/env ruby

Dir.glob("*/*.rb").each do |problem|
  start = Time.now
  solution = `#{problem} 2> /dev/null`.chomp
  execution_time = Time.now - start
  puts "#{problem}: #{solution}, calculated in #{execution_time}"
end
