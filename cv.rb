#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)

    vs = 0
    prelvl = 0
    lvl = 0
    s.each_char do |u|
        if u == "D" then 
            lvl -= 1
        elsif u == "U" then 
            lvl += 1
            if lvl == 0 && prelvl < 0
                vs += 1
            end
        end
        prelvl = lvl
    end     
    vs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

s = gets.to_s.rstrip

result = countingValleys n, s

fptr.write result
fptr.write "\n"

fptr.close()
