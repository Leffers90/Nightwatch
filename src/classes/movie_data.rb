require 'json'
require_relative 'movie'
# movie_data = JSON.parse(File.read("../data/movie-database.json"))

# puts movie_data
class MovieData
    attr_accessor :top_list, :movie_data
    def initialize(filename='')
        @top_list = {}
        @movie_data = []
        if filename.length == 0
            set_default_movie_data
        else
            #read data from file            
            file_data = JSON.parse(File.read("data/movie-database.json"))
            create_movie_data_from_file(file_data)
        end
        # top_list is a hash of genre: [movie list]
        
    end

    def set_default_movie_data
        @movie_data << Movie.new("title","genre")
    end

    def create_movie_data_from_file(file_data)
        # puts "in create movie data from file with #{file_data}"
        file_data.each do |m_data|
            @movie_data.push(Movie.new(m_data["title"],m_data["genre"]))
        end
    end

    # Get top movies by genre
    # range indicates how many to return
    # assumes that the array of movies is sorted already by ranking (To be implemented)
    # returns an array of Movie objects for the specified genre and stores that array in @top_list
    def set_movies_by_genre(genre, range)
        if !@top_list.key?(genre)
            for movie in @movie_data
                if movie.genre == genre && @top_list[genre].length < range
                    @top_list[genre] << movie
                end 
            end
        end
    end
    
    # prints top 5 movies for the given genre
    # calls set_movies_by_genre to make sure the list is populated
    def movie_titles(genre)
        set_movies_by_genre(genre, 5)
        for film in @top_list[genre]
            puts film.title
        end
    end
end