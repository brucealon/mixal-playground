#!/usr/bin/env ruby

infile   = 'max.template'
mem      = 1000
max      = 0
index    = 0
count    = 100
state    = 0

File.foreach(infile) do |line|
  if line.start_with?('* BEGIN')
    state = 1
    puts line
    puts "START       ENT1    #{count}"
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
  elsif line.start_with?('* END')
    state = 0
    puts line
  elsif state.equal?(0)
    puts line
  end
end
