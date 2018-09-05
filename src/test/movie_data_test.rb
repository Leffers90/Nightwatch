require 'test/unit'
require_relative '../classes/movie_data'

class MovieDataTest < Test::Unit::TestCase
    def test_populate_from_file
        movie_data = MovieData.new("/mnt/c/Users/jebus/code/term1-assignment/Nightwatch/src/data/movie-database.json")
        assert_boolean(true)
    end
    def test_populate_with_default
        movie_data = MovieData.new
        assert_boolean(true)
    end
end