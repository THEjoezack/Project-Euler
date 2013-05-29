factorials = [1]

(1..9).each do |i|
	factorials.push(i * factorials.last)
end

result = 0
(3..3_265_920).each do |n|
	sum = n.to_s.split("").inject(0) do |sum,n|
		sum + factorials[n.to_i]
	end
	result += n if n == sum
end
puts result