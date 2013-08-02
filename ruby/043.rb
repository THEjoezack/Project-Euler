require './lib/permuter'

def is_special? nums
	chars = nums.to_s.split('')
	$primes.each_with_index do |prime, i|
		return false if get_n(chars, i + 1) % prime != 0
	end
	true
end

def get_n chars, n
	(chars[n] + chars[n + 1] + chars[n + 2]).to_i
end

permuter = Permuter.new
$primes = [2,3,5,7,11,13,17]
nums, last = "0123456789", ""
sum = 0

while  nums != last
	last = nums
	if is_special? nums
		sum += nums.to_i 
		puts nums
		puts sum
	end
	nums = permuter.next_asc last
end

puts sum


# would be much faster to figure out the unique numbered factors for each prime less than 1000
# then try all the combinations