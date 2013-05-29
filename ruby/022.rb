def convert word
  total = 0
  word.each_byte do |i|
    total += i - 64
  end
  total
end

file  = File.new("files/names.txt", "r")
names = eval("[" + file.gets + "]").sort
total = 0

file.close

names.each_with_index do |name, i|
  total += convert(name) * (i + 1)
end

puts total