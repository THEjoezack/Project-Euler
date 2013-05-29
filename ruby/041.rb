require 'lib\prime_generator'
require 'lib\permuter'

primer = Prime_Generator.new
permuter = Permuter.new

max = 987_654_321
n = max

while n > 0
  last = n

  #Chop off leading digits if we hit the last permutation
  n = permuter.next_desc(last) || max % 10**((Math.log10(last)).ceil - 1)

  break if primer.is_prime? n
end

puts n