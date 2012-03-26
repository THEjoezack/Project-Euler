product, sum = 1, 0

100.times do |i|
  product *= (i + 1)
end

while product > 0
  sum += (product /= 10) % 10
end

puts sum