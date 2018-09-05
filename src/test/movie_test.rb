require 'test/unit'
require_relative '../classes/movie'

#Tests if Movie title is set correctly
class MovieTest < Test::Unit::TestCase
    def test_movie_title
        movie = Movie.new("Movie Title","comedy")
        assert_equal("Movie Title",movie.title)
    end

    #Tests if genre is set correctly
    def test_movie_genre
        movie = Movie.new("Movie Title","comedy")
        assert_equal("comedy", movie.genre)
    end
end