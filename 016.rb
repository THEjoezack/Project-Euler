n = 0

(2 ** 1000).to_s.scan(/./).each do |i|
  n += i.to_i
end

puts n