genre_list = {Comedy: "comedy", Action: "action", Thriller: "triller", Quit: true} # strings will be objects on later date.. 

puts "Welcome to Nightwatch"
puts "Your effortless movie list"
puts "Please enter a number for your genre"
i = 0

genre_list.each do |key, value|
    puts "#{i+=1} > #{key}"

end
i = 0

user_input = gets.chomp

case user_input
    when (genre_list.length).to_s
        puts "quit"
    when "1"
        puts "Will display top 5 comedy movies"
    when "2"
        puts "Will display top 5 action movies"
    when "3"
        puts "Will display top 5 Thriller movies"
    else
        puts "Sorry user input is not valid"
end

