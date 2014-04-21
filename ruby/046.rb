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
    doubles.each do |double|
      results[primer.stack[prime_index] + double] = 0
    end
  end

  while doubles.last < n
    doubles << 2 * doubles.count * doubles.count
    primer.stack.each do |prime|
      results[prime + doubles.last] = 0
    end
  end

end while results.has_key?(n) || primer.is_prime?(n)

puts n