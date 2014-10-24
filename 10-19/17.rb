#!/usr/bin/env ruby

ONES = { 0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine" }
TENS = { 0 => "", 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety" }

EXCEPTIONS = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }

def written(n)
  thousands = n % 10000 / 1000
  hundreds = n % 1000 / 100
  tens = n % 100 / 10
  ones = n % 10
  
  output = ""
  output += ONES[thousands] + " thousand" if !ONES[thousands].empty?
  output += ", " unless output.empty? || hundreds == 0 && tens == 0 && ones == 0
  output += ONES[hundreds] + " hundred" if !ONES[hundreds].empty?
  output += " and " unless output.empty? || tens == 0 && ones == 0
  
  if tens == 1
    output += EXCEPTIONS[tens * 10 + ones]
    return output
  end

  output += TENS[tens] if tens != 1 && tens != 0
  output += "-" unless ones == 0 || tens == 0
  output += ONES[ones]
end

puts (1..1000).map { |n| written(n) }.map { |written_word| written_word.scan(/\w/).count }.inject(:+)
