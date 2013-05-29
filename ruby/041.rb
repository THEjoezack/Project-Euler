require './prime_generator'
require './permuter'

# Ugh
start = 987_654_321
current = start
last = 0
digits = current.to_s.split ''
primer = Prime_Generator.new Math.sqrt(current)
permuter = Permuter.new

while current > 0
  digits = permuter.next_desc(digits)
  current = digits.join('').to_s.to_i

  if primer.is_prime? current
  	puts current
  	exit
  end
  if last == current
  	current = start % 10**((Math.log10(current)).ceil - 1) #Chop off leading digit
  	digits = current.to_s.split ''
  else
  	last = current
  end
end