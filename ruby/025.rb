max = 10 ** 999
a, b, i = 1, 1, 2

while b < max
  i += 1
  a, b = b, b + a
end

puts i