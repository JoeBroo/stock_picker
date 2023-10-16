def stock_picker(prices)

    puts "Welcome to the Stock Picker!"

    puts "How much money do you want to spend?"
    money = gets.chomp.to_i
    "You can spend $#{money}"

    prices.each { |price| puts price }

    #Keeps track of best day to buy and best day to sell stock
    days = []

    #Store lowest and highest prices
    lowest_highest = prices.minmax
    puts "The lowest and highest stock prices are: #{lowest_highest}"


end

stock_picker([17,3,6,9,15,8,6,1,10])
    