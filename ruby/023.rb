# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

def sum_proper_divisors n
  sum = 1
  (2..Math.sqrt(n)).each do |i|
    if n % i == 0
      result = n / i
      sum += result unless result == i
      sum += i
    end
  end
  sum
end

def next_abundant repo
  i = repo.last + 1
  while( sum_proper_divisors(i) <= i)
    i += 1
  end
  i
end

max   = 20_200
repo  = [12]
sums  = {24 => nil}
total = 0

while repo.last < max do
  repo << next_abundant(repo)
  repo.each do |i|
    sum = repo.last + i
    if sum > max
      break
    end
    sums.store sum, nil
  end
end

max.times do |i|
  total += i unless sums.include? i
end

puts total