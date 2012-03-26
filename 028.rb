def sum_corners n
  return 1 if n == 1
  4 * ((n * 2 - 1) ** 2 - (3 * n - 3)) + sum_corners(n - 1)
end

puts sum_corners((1001 + 1) / 2)