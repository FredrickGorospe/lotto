#!/usr/bin/env ruby
 
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
  puts "You win 100,000 pesos!"
elsif number_of_matches == 5
  puts "You win 75,000 pesos!"
elsif number_of_matches == 4
  puts "You win 20,000 pesos!"
elsif number_of_matches == 3
  puts "You win 100 pesos :<"
else 
  puts "A for effort"
end
