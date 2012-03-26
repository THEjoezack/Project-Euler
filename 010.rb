#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.

$max   = 2_000_000
$stack = [2,3]
$total = 5
$store = Math.sqrt($max).floor
n      = 1

def is_prime n
  max = Math.sqrt(n).floor
  $stack.each do |i|
    if i > max
      return true
    end
    if n % i == 0
      return false
    end
  end
  true
end

def store n
  if $stack.length < $store
    $stack << n
  end
  if n >= $max
    puts $total
    exit
  else
    $total += n
  end
end

while true do

  if is_prime n += 4
    store n
  end

  if is_prime n += 2
    store n
  end

end

puts $total