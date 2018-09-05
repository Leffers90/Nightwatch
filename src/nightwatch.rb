#This file is the program.

#Pulls data from MoviesData Class.


require_relative "classes/movie_data"
require_relative "classes/user"

movie_data = MovieData.new("data/movie-database.json")
user = User.new
is_running = true # <-- Sets aplication runtime to true. Program will loop until set to false.

def process_user_input(user, movie_titles)
    #Prosesses the users movie choise and adds it to @user_list array in User class
    puts "Please select a movie from the list that you'd like to watch"
    print "-> "
    input = gets.chomp.to_i
    user.user_list << movie_titles[input - 1]
    system ("clear")
    puts "\"#{movie_titles[input - 1]}\" has been added to your list\n\n"
end

system ("clear")
puts "Welcome to Nightwatch"
puts "Your effortless movie list"
puts "Please enter a number for your movie genre that you'd like to watch \n\n"


# This is the main menu with a loop, 
while is_running

puts "1 > Comedy movie genre"
puts "2 > Action movie genre"
puts "3 > Check what is your list"
puts "4 > Quit :("
print " -> "
user_input = gets.chomp
case user_input
    when "4"
        puts "quit"
        is_running = false
    when "1"
        system ("clear")
        puts "Top 5 comedy movies"
        #The "movie_title" method gets movie titels by genre specified.
        process_user_input(user, movie_data.movie_titles("comedy"))

    when "2"
        system ("clear")
        puts "Will display top 5 action movies"
        process_user_input(user, movie_data.movie_titles("action"))
                 
    when "3"
        system ("clear")
        user.print_user_list
    else
        system ("clear")
        puts "Sorry user input is not valid"
end

end