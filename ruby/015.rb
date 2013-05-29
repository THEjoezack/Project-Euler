# How many routes are there through a 20 x 20 grid? (no backtracking)

def move grid, x, y
  size = grid.size - 1

  if x > size or y > size
    return 0
  end

  if x == size and y == size
    return 1
  end

  if grid[x][y] != nil
    return grid[x][y]
  end

  grid[x][y] = move(grid, x + 1, y) + move(grid, x, y + 1)
  
end

size = ARGV[0].to_i
grid = Array.new(size + 1) do |i|
  i = Array.new(size + 1)
end

puts move(grid, 0, 0)