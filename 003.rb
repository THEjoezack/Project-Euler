# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

target = 600_851_475_143

def find_highest_prime_factor n
  (Math.sqrt(n).ceil).downto 2 do |i|
    if n % i == 0 && find_highest_prime_factor(i) == 1
      return i
    end
  end
  1
end

puts find_highest_prime_factor(target)