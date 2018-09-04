require "test/unit"
require_relative "../src/Movie"

#Test Class Creation
class TestMovie < Test::Unit::TestCase
def test_get_description
    movie1 = Movie.new("Test Title", "Thriller", "130 mins", "This is a test movie", ["Tom Cruise", "Brad Pitt", "Nicole Kidman"], "Steven Spilberg")
    assert_equal("Test Title", movie1.title)
end 

end