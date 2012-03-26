# A palindromic number reads the same both ways.
# The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product
# of two 3-digit numbers.

high = 999
low  = 100

def get_highest_palindrome high, low
  highest = 0
  high.downto low do |i|
    high.downto low do |j|
      sum = i * j
      if sum <= highest
        break
      end
      if is_palindrome(sum.to_s)
        highest = [highest, sum].max
      end
    end
  end
  return highest
end

def is_palindrome str
  return str == str.reverse
end

puts get_highest_palindrome(high, low)