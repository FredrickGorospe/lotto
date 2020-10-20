#!/usr/bin/env ruby
 
lotto_ticket = []
6.times do
  begin
    print "Enter a number from 1 to 45: "
    number = gets.to_i
    raise ValueError if number < 1 && number > 45
  rescue ValueError 
    puts "You must enter a number from 1 to 45"
    retry 
  end
end
puts lotto_ticket