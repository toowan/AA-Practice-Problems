# Catsylvanian money is a strange thing: they have a coin for every denomination 
# (including zero!). A wonky change machine in Catsylvania takes any coin of value N 
# and returns 3 new coins, valued at N/2, N/3 and N/4 (rounding down).

# Write a method `wonky_coins(n)` that returns the number of coins you are left with 
# if you take all non-zero coins and keep feeding them back into the machine until 
# you are left with only zero-value coins.



# My solution with arrays and recursion
def wonky_coins(n)
 return 1 if n == 0

 coins = []
 coins << n/2 << n/2 << n/4 if n != 0

 coin_total = 0

 coins.each do |coin|
 	coin_total += wonky_coins(coin) if coin > 0
 	coin_total += 1 if coin == 0
 end

 return coin_total
end

# Jimmy's solution without recursion
def wonky_coins_iter(n)
 coins_queue = [n]
 zero_coins_count = 0
 while(!coins_queue_empty?)
 	coin = coins_queue.pop
 	if coin == 0
 		zero_coins_count += 1
 	else
 		coins_queue << coin/2 << coin/3 << coin/4
 	end
 end
 return coin_total
end

