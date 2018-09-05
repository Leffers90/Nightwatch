#User class receives top 5 movies in specified genre

class User
    attr_accessor :user_list
    def initialize
        @user_list = [] # this array will store selected movies they have picked.
    end
    def print_user_list
        puts "Here are your selected movies"
        for film in @user_list
            puts "  #{film}"
        end
    end
    
end