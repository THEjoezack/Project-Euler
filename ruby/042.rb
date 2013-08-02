def is_triangle? word
	score = score_word word
	while $topScore < score do
		$lastN += 1
		$topScore = triangle $lastN
		$map[$lastN] = $topScore
	end
	$map.has_value? score
end

def score_word word
	word.split('').inject 0 do |sum, c|
		sum + c.ord - 64
	end
end

def triangle n
	(n * (n + 1)) / 2
end

$map = {}
$topScore = 0
$lastN = 0
triangle_count = 0

File.open("data/words.txt", "r") do |infile|
	while line = infile.gets
		words = line.gsub(/[^A-Z,]+/,'').split ','

		words.each do |w|
			triangle_count += 1 if is_triangle? w
		end
	end
end

puts triangle_count