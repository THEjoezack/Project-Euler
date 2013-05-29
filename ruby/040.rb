result = 1
count = 0
digit = 0

7.times do |i|
  target = 10**i

  while count < target
    digit += 1
    count += Math.log10(digit).to_i + 1
  end

  result *= digit.to_s.reverse[count - target].to_i // gotta be a better way to do this
end

puts result 
