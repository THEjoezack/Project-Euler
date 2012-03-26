require 'prime_generator'

# pre-calculate primes
MAX     = 1_000
primer  = Prime_Generator.new MAX
primes  = primer.stack
product = 0
highest = 0

# a must be odd
(0..MAX).each do |i| 
  next if i & 1 == 0

  # b must be prime
  primes.each do |b|
    
    # a can be positive or negative
    [i,-i].each do |a|
      n = 0
      while n += 1 do
        break unless primer.is_prime?(n ** 2 + a * n + b)
      end

      if highest < n
        highest = n
        product = a * b
      end
    end
  end
end

puts product