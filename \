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
puts "The winning are: #{winning_numbers}"
number_of_matches = lotto_ticket & winning_numbers
puts "Number of matches: #{number_of_matches}"

