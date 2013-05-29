load 'lib\prime_generator.rb'

def prime? n, truncate
  return false if !$primer.is_prime?(n)
  return true if n < 10
  prime? truncate.call(n), truncate
end

left = Proc.new { |n| n / 10 }
right = Proc.new { |n| n % 10**Math.log10(n).to_i }

$primer = Prime_Generator.new 3_797
n, sum, found = 0, 0, 0

while found < 11 do  
  if (n += 1) > 10 && prime?(n, left) && prime?(n, right)
    found += 1
    sum += n
  end
end

puts sum
