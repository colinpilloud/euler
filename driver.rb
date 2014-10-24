#!/usr/bin/env ruby

Dir.glob("*/*.rb").each do |problem|
  print "#{problem}: ", `#{problem} 2> /dev/null`
end
