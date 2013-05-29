def d(n)
  total = 1
  (2..Math.sqrt(n)).each do |i|
    if n % i == 0
      total += n / i + i
    end
  end
  total
end

def amicable?(a, repo)
  repo[a] = b = d(a)
  a != b and a == repo[b]
end

repo  = {}
total = 0

10_000.times do |i|
  if amicable?(i, repo)
    total += (i + repo[i])
  end
end

puts total