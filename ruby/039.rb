counts = {}
counts.default = 0

(1..499).each do |a|
  (a..499).each do |b|
    break if a + b > 500
    c = Math.sqrt(a**2 + b**2)
    next unless c.denominator == 1
    counts[a + b + c] += 1
  end
end

sorted = counts.sort { |a, b| a[1] <=> b[1] }

puts sorted.last[0]