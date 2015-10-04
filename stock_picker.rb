def stock_picker(days)
#initialize a method called stock_picker with the arguments of days
	buy_day = 0
	sell_day = 0
	max_profit = 0
	x = 0
	#creates four variables all with the default value of 0
	while x < days.size do
		y = x + 1
		while y < days.size do
			if days[y] - days[x] > max_profit
				max_profit = days[y] - days[x]
				sell_day = y
				buy_day = x
			end
		y += 1
		end
		x += 1
	end
	puts "The best day to buy is day #{buy_day}"
	puts "And the best day to sell is day #{sell_day}"
		
end

stock_picker([16,9,12,3,2,5,7,15,1])