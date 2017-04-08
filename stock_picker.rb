def stock_picker(stock_prices)
  profit = 0
  best_buy = 0
  best_sell = 0
  stock_prices.each do |price|
    buy_day = stock_prices.index(price)
    for index in (buy_day..(stock_prices.size-1))
      temp_profit = (stock_prices[index])-(stock_prices[buy_day])
      if temp_profit > profit
        profit = temp_profit
        best_buy = buy_day
        best_sell = index
      end
    end
  end
  puts "Buy in #{best_buy} days for $#{stock_prices[best_buy]} and sell in #{best_sell} days for $#{stock_prices[best_sell]}."
  puts "You will make $#{profit} in profit."
end

stock_picker([22,14,18,3,1,15,11,1])
