def triangle n
	(n * (n + 1)) / 2
end

def pentagonal n
	(n * (3 * n - 1)) / 2
end

def hexagonal n
	n * (2*n - 1)
end

def is? n, method, cache
	while cache.last < n
		cache << method.call(cache.count)
	end
	cache.include? n
end

triangles = [1]
pentagonals = [1]
hexagonals = [1]
result = 0

n = 143 + 1
while true
	result = hexagonal(n)
	hexagonals << result
	break if is?(result, method(:pentagonal), pentagonals) && is?(result, method(:triangle), triangles)
	n += 1
end

puts result.to_s