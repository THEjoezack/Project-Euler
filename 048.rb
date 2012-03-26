sum = 0

(1..1000).each do |i|
  sum += i**i
end

puts (sum % 10**10).to_s[-10, 10]