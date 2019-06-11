#!/usr/bin/env ruby

mem = 1000
max = 0

(1..100).each do |x|
  num = rand(3000)
  puts "            ENTA #{num}"
  puts "            STA #{mem}"
  max = num if num > max
  mem += 1
end

puts "Maximum is #{max}"
