# 2520 is the smallest number that can be
# divided by each of the numbers from 1 to 10
# without any remainder.

# What is the smallest number that is evenly
# divisible by all of the numbers from 1 to 20?

require 'mathn'

max = 20
min = (max / 2).floor + 1
n   = min

(min..max).each do |i|
  n = n.lcm i
end

puts n