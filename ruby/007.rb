# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.

# What is the 10001^(st) prime number?

target = 10001
stack  = [2,3]
n      = 1

def is_prime stack, n
  max_check = Math.sqrt(n).floor
  stack.each do |i|
    if i > max_check
      return true
    end
    if n % i == 0
      return false
    end
  end
  true
end

while true do
  
  if is_prime stack, n += 4
    stack << n
  end

  if is_prime stack, n += 2
    stack << n
  end

  if stack.length >= target
    break
  end
end

puts stack[target - 1]