def stock_picker(prices)

    puts "Welcome to the Stock Picker!"

    puts "How much money do you want to spend?"
    money = gets.chomp.to_i
    puts "You can spend $#{money}"

    #Takes total money and subtracts the total value of stock prices
    prices.each do |purchase|
        money = money - purchase
    end

    p "You have $#{money} remaining"

    #Keeps track of best day to buy and best day to sell stock
    days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

    days.each_with_index {|day, idx| puts "#{day} is day #{idx + 1} of the week"}


    #Find cheapest stock 
    cheap = prices.min
    puts cheap

    #Find its location
    cheap_loc = prices.find_index {|e| e == cheap }

    #Find most expensive stock
    expensive = prices.max
    puts expensive

    #Find its location
    expensive_loc = prices.find_index {|e| e == expensive }



end

stock_picker([17,3,6,9,15,8,6,1,10])