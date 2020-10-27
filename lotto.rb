#!/usr/bin/env ruby
 
total_funds = 100
loop do
  puts "Total funds: #{total_funds} "
  if total_funds < 50
    puts "You dont have enough money to bet!"
    break
  end
  print "Do you want to buy a lotto ticket for 50 pesos? [y/n]: "
  break unless gets.chomp.upcase[0] == "Y"
  
  lotto_ticket = []
  6.times do
    begin
      print "Enter a number from 1 to 20: "
      number = gets.to_i
      raise RangeError if number < 1 || number > 20
      raise ArgumentError if lotto_ticket.include?(number)
    rescue RangeError 
      puts "You must enter a number from 1 to 20"
      retry 
    rescue ArgumentError
      puts "You have already entered that number"
      retry
    end
    lotto_ticket << number 
  end

  puts "Press enter to start draw"
  gets  
  total_funds = total_funds -= 50
  winning_numbers = []
  loop do
    winning_number = rand(1..20)
    (winning_numbers << winning_number) unless winning_numbers.include?(winning_number)
    break if winning_numbers.length == 6
  end

  puts "You bet: #{lotto_ticket}"
  puts
  puts "The winning numbers are: #{winning_numbers}"
  matching_numbers = lotto_ticket & winning_numbers
  puts "Matching numbers: #{matching_numbers}"
  number_of_matches = matching_numbers.length
  puts "Number of matches: #{number_of_matches}"

  if number_of_matches == 6 
    total_funds += 100_000
    puts "You win 100,000 pesos!"
  elsif number_of_matches == 5
    total_funds += 75_000
    puts "You win 75,000 pesos!"
  elsif number_of_matches == 4
    total_funds += 20_000
    puts "You win 20,000 pesos!"
  elsif number_of_matches == 3
    total_funds += 100
    puts "You win 100 pesos :<"
  else 
    puts "A for effort"
  end
end


