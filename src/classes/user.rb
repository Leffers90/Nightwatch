#User class receives top 5 movies in specified genre

class User
    attr_accessor :user_list
    def initialize
        @user_list = [] # this array will store selected movies they have picked.
    end

    #Prints all movie titles inside the users list.
    def print_user_list
        puts "Please write down the slected movies onto piece of paper."
        puts "Ability so save list will be implemented in near future."
        puts "Please stand by :) \n\n"

        puts "Here are your selected movies:"
        for film in @user_list
            puts " - #{film}"
        end
        puts ""
    end
    
end