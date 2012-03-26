max = 100

def sum_of_squares max
  total = 0
  max.times do |i|
    i += 1
    total += i ** 2
  end
  total
end

def square_of_sums max
  total = 0
  max.times do |i|
    i += 1
    total += i
  end
  total ** 2
end

puts square_of_sums(max) - sum_of_squares(max)