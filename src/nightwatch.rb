#Pull data from Movies Class.
#Generate menu screen from Movie Class

require_relative "classes/Movies"
movie = Movies.new


user_list = []

is_running = true

puts "Welcome to Nightwatch"
puts "Your effortless movie list"
puts "Please enter a number for your genre"
puts Movie_obj


# This is the main menu with a loop, 
while is_running

puts "For Comedy push 1"
puts "For Action push 2"
puts "Push 3 to check your list"
puts "Push 4 to quit"

user_input = gets.chomp

case user_input
    when "4"
        puts "quit"
        is_running = false
    when "1"
        puts "Top 5 comedy movies"
        movie_titles(movie,"comedy")
    when "2"
        puts "Will display top 5 action movies"
        movie_titles(movie,"action")
        puts movie_list
    when "3"
        puts "Will display users list"
    else
        puts "Sorry user input is not valid"
end

end