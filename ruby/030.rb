power, total = 5, 0

(power * 9**power).times do |i|
  total += i if i == i.to_s.split('').inject(0) {
    |sum, n|
    sum + n.to_i**power
  }
end

puts total - 1