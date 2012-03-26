def count_coins coins, target, last_coin = 0

	return 1 if target == 0
	total = 0

	coins.each do |c|
		next if c < last_coin
		total += count_coins(coins, target - c, c) if (target >= c)
	end

	total
end

puts count_coins(
	[1,2,5,10,20,50,100,200],
	200
)