#!/usr/bin/env ruby

mem   = 1000
max   = 0
index = 0
count = 100

(1..count).each do |x|
  num = rand(3000)
  puts "            ENTA    #{num}"
  puts "            STA     #{mem}"
  if num > max
    max = num
    index = x - 1
  end
  mem += 1
end

puts "* #{count} entries"
puts "* maximum is #{max} at #{index}"
