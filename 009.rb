target = 1000
min    = Math.sqrt(target).to_i
max    = target / 2

(min..max).each do |a|
  ((a + 1)..max).each do |b|
    c   = Math.sqrt(a**2 + b**2).to_i
    sum = a + b + c
    if sum > target
      break
    elsif (sum == target) && (a**2 + b**2 == c**2)
      puts a * b * c
      break
    end 
  end
end