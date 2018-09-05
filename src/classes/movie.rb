# Represents a movie
class Movie
  attr_accessor :title,:genre
  def initialize(title,genre)
    @title = title
    @genre = genre   
  end

end
