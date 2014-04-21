require './lib/prime_generator'

primer = Prime_Generator.new
doubles = [2]
results = {}

n = 7
begin
  n += 2
  last_index = primer.stack.count
  primer.fill_to n

  (last_index..primer.stack.count - 1).each do |prime_index|
  	last_prime = primer.stack[prime_index]
    doubles.each do |double|
      results[last_prime + double] = 0
    end
  end

  next if primer.is_prime? n

  while doubles.last < n
  	double = 2 * doubles.count * doubles.count
    doubles << double
    primer.stack.each do |prime|
      results[prime + double] = 0
    end
  end
end while results.has_key?(n) || primer.is_prime?(n)

puts n