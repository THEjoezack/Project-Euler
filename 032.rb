def combo size, current = 0, stack = [], results = {}

  return results[stack.join.to_i] = stack.clone if size == 0

  (1..9).each do |n|
    next if stack.include?(n)
    stack[current] = n
    combo(size - 1, current + 1, stack.clone, results)
  end

  return results
end

def pandigitals a, b, c
  results = []

  $repo[a].each_pair do |a_num, a_arr|
    $repo[b].each_pair do |b_num, b_arr|
      product = a_num * b_num
      if $repo[c].include?(product)
      	c_arr = $repo[c][product]
        results.push(product) if (a_arr + b_arr + c_arr).uniq.length == 9
      end
    end
  end

  return results
end

$repo = {
  1 => combo(1),
  2 => combo(2),
  3 => combo(3),
  4 => combo(4)
}

results = pandigitals(1, 4, 4) + pandigitals(2, 3, 4)

puts results.uniq.inject(:+)