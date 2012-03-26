def nth_lexical_permutation values, key = "", chain = ""

  chain    = chain + key.to_s
  children = values.select { |i| i != key }

  $count -= 1 if children.size == 0

  return chain if $count == 0

  children.each do |i|
    result = nth_lexical_permutation children, i, chain
    return result if result.size > 0
  end

  ""
end

$count = 1_000_000
set    = (0..9).to_a

puts nth_lexical_permutation(set)