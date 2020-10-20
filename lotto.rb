#!/usr/bin/env ruby
 
lotto_ticket = []
6.times do
  begin
    print "Enter a number from 1 to 10: "
    number = gets.to_i
    raise RangeError if number < 1 || number > 10
  rescue RangeError 
    puts "You must enter a number from 1 to 10"
    retry 
  end
  lotto_ticket << number 
end

winning_numbers = []
6.times do
  winning_numbers << rand(1..10)
end

puts "You bet: #{lotto_ticket}"
puts
puts "The winning are: #{winning_numbers}"


