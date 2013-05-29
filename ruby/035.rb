require 'lib\prime_generator'

primer = Prime_Generator.new 1_000_000

def is_rot_prime? primer, chars
	chars.size.times do |i|
		chars = Array.new(chars.size) { |i| chars[i - 1] }
		return false if !primer.is_prime?(chars.join("").to_i)
	end
	true
end

count = 0
primer.stack.each do |n|
	count += 1 if is_rot_prime? primer, n.to_s.split("")
end

# subtract 1 because "1" doesn't count
puts count - 1