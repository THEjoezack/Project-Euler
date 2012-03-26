def get_pandigital? n
  nums = []
  (1..9).each do |digit|
    
    nums += (n * digit).to_s.split ''
    return 0 if nums.size != nums.uniq.size || nums.include?('0')
    return nums.join('').to_i if nums.size == 9
  end
end

solution = 0

(9..9_876).each do |n|
  # could do better by only looking at 9's!
  result = get_pandigital? n
  if result > solution
    solution = result
  end
end

puts solution