#Pull data from Movies Class.
#Generate menu screen from Movie Class

<<<<<<< HEAD
require_relative "classes/movie"
movie = Movie.new
=======
require_relative "classes/movie_data"
require_relative "classes/user"
>>>>>>> de5e562881bfe5e3e45ba4ccadbd6dea4e71cea0

movie_data = MovieData.new("data/movie-database.json")
user = User.new

is_running = true
def process_user_input(user, movie_titles)
    puts "Select a movie, please"
    input = gets.chomp.to_i
    user.user_list << movie_titles[input - 1]
end

puts "Welcome to Nightwatch"
puts "Your effortless movie list"
puts "Please enter a number for your genre"


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
        process_user_input(user, movie_data.movie_titles("comedy"))        
    when "2"
        puts "Will display top 5 action movies"
        process_user_input(user, movie_data.movie_titles("action"))        
    when "3"
        user.print_user_list
    else
        puts "Sorry user input is not valid"
end

end