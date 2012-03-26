# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Which starting number, under one million, produces the longest chain?

def advance heap, n, count

  if heap.has_key? n
    return heap[n] + count
  end

  if (n & 1) == 0
    return advance(heap, n / 2, count + 1)
  end

  advance(heap, 3 * n + 1, count + 1)

end

heap = Hash[0,0,1,1]
answer, max = 1, 1

1_000_000.times do |i|

  heap[i] = advance(heap, i, 1)

  if heap[i] > max
    max = heap[i]
    answer = i
  end
  
end

puts answer