require_relative "../lib/allmovies.rb"
require "imdb"


RSpec.describe "Movies" do 
   before :each do
    @userinput = "funny"

    @allmovies = All_movie.new
    end
   it "#find_movie_by_relative" do
      movies = @allmovies.find_movie_by_relative(@userinput)
      expect( movies.length ).to be > 1
   end
  it "#valid_picture" do
     movies = @allmovies.find_movie_by_relative(@userinput)
     # movies = 25 movies from movies array
     array_valid_movies = @allmovies.valid_picture(movies)

     expect( array_valid_movies.length ).to eq 9
  end
end