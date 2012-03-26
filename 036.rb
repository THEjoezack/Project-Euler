def palindrome? s
	s == s.reverse
end

sum = (1..1_000_000).inject(0) do |sum, n|
	sum += palindrome?(n.to_s) && palindrome?(n.to_s 2) ? n : 0
end

puts sum