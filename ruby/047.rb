require './lib/prime_generator'
require 'mathn'

primer  = Prime_Generator.new

def count_prime_factors primer, n
  total,max = 1,n / 2

  primer.fill_to max

  count, last = 0,0
  primer.stack.each do |i|
    next if i == 1
    while n % i == 0
      count += 1 if i != last
      last = i
      n = n / i
    end
  end

  count
end

goal,n,consecutive = 4,2,0

while consecutive < goal
  if count_prime_factors(primer, n) == goal
    consecutive += 1
  else
    consecutive = 0
  end
  n += 1
end

puts (n - goal).to_s