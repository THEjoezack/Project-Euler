require './lib/prime_generator'

def mutual_permutations? a, b, c
  sorted_a = sort(a)
  sorted_a == sort(b) && sorted_a == sort(c)
end

def sort n
  n.to_s.split(//).sort.to_s
end

primer = Prime_Generator.new
primer.fill_to 9999

range = primer.stack.select { |i| i > 1000 && i != 1487 } # exclude given

(0..range.count - 1).each do |i|
  (i + 1..range.count - 1).each do |j|
  	a = range[i]
  	b = range[j]
  	c = b + (b - a)

  	if(range.include?(c)) then
  	  if mutual_permutations?(a,b,c)
  	    puts a.to_s + b.to_s + c.to_s
  	    exit
  	  end
  	end
  end
end