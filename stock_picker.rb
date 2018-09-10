# def stock_picker(arr)
#     differentials = map_best_outcomes(arr)
#     buy_sell = find_best_combination(differentials)    
#     print buy_sell
# end

# def map_best_outcomes(arr)
#     arr.each_with_index.map{
#         |price, i|
#         largest_diff = { amount: 0, index: nil}
#         future_prices = arr.slice(i+1..-1)
#         future_prices.each_with_index {
#             |f_price, fi|
#             diff = f_price.to_i - price.to_i
#             new_diff = {
#                 amount: diff,
#                 index: fi.to_i+i.to_i+1
#             }
#             largest_diff = diff > largest_diff[:amount].to_i ? new_diff : largest_diff
#         }
#         largest_diff
#     }
# end

# def find_best_combination(differentials)
#     buy_sell = []
#     most_profit = 0
#     differentials.each_with_index {
#         |diff_hash, today|
#         if diff_hash[:amount].to_i > most_profit.to_i
#             most_profit = diff_hash[:amount].to_i
#             buy_sell = [today, diff_hash[:index]] 
#         end
#     }
#     buy_sell
# end

def stock_picker(prices)
    most_profit = 0;
    buy_sell = []
    for x in 0..(prices.length-2) do 
        for y in (x+1)..(prices.length-1) do
            profit = prices[y] - prices[x]
            if profit > most_profit
               most_profit = profit
               buy_sell = [x,y] 
            end
        end
    end
    print buy_sell
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])