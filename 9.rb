#!/usr/bin/env ruby

1.upto(500) do |m|
  1.upto(500) do |n|
    if m * (m + n) == 500 && m > n
      a = m**2 - n**2
      b = 2 * m * n
      c = m**2 + n**2

      puts a * b * c
      exit
    end
  end
end
