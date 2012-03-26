require 'date'

start = Date.new 1901, 1, 1
total = 0

(100 * 12 - 1).times do |i|
  total += 1 if (start >> i).wday == 0
end

puts total