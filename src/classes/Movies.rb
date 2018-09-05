require 'json'
# movie_data = JSON.parse(File.read("../data/movie-database.json"))

# puts movie_data
class Movies
    attr_accessor :top5_list
  def initialize
    @top5_list = []
    @movie_data = JSON.parse(File.read("data/movie-database.json"))
  end

  def get_movies_by_genre(genre, range)
    @top5_list = []
    for movie in @movie_data
      @top5_list << movie if movie['genre'] == genre && @top5_list.length < range
    end
  end

end
