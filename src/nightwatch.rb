#Pull data from Movies Class.
#Generate menu screen from Movie Class

require "classes/Movies"

genre_list = {Comedy: "comedy", Action: "action", Quit: false} # strings will be objects on later date.. 
user_list = []


is_running = true

puts "Welcome to Nightwatch"
puts "Your effortless movie list"
puts "Please enter a number for your genre"

i = 0
# This is the main menu with a loop, 
while is_running

genre_list.each do |key, value|

    puts "#{i+=1} > #{key}"
end

i = 0

user_input = gets.chomp

case user_input
    when (genre_list.length).to_s
        puts "quit"
        is_running = genre_list[:Quit]
    when "1"
        puts "Will display top 5 comedy movies"
    when "2"
        puts "Will display top 5 action movies"
    when "3"
        puts "Will display top 5 Thriller movies"
    else
        puts "Sorry user input is not valid"
end

end