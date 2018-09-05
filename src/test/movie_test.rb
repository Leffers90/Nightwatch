require 'test/unit'
require_relative '../classes/movie'

class MovieTest < Test::Unit::TestCase
    def test_movie_title
        movie = Movie.new("Movie Title","comedy")
        assert_equal("Movie Title",movie.title)
    end

    def test_movie_genre
        movie = Movie.new("Movie Title","comedy")
        assert_equal("comedy", movie.genre)
    end
end