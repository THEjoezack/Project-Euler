# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

input = File.new("files/13.txt", "r")
total = 0

input.each do |i|
  total += i.slice(0..10).to_i
end

puts total.to_s.slice(0,10)