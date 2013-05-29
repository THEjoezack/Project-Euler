# Find the value of d < 1000 for which (1)/(d) contains
# the longest recurring cycle in its decimal fraction part.

def divide n, d, repo = []
  return repo.size - repo.index(n) if repo.include? n
  divide 10 * (n - (n / d) * d), d, repo << n
end

highest = {"d" => 1, "count" => 1}

(1..499).each do |i|
  x     = i * 2 + 1
  count = divide 1, x
  if count > highest['count']
    highest = {"d" => x, "count" => count}
  end
end

puts highest["d"]