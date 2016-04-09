require "sinatra"
require "sinatra/reloader"
require "imdb"

require_relative("lib/allmovies.rb")
allmovies = All_movie.new
correctyear = 1997

get "/" do
  erb :home
end
post "/find_movie_by" do
  @correctyear = correctyear
  user_input_text = params[:title]
  arraymovies = allmovies.find_movie_by_relative(user_input_text)
  @array_valid_movies = allmovies.valid_picture(arraymovies)
  @array_valid_movies.each do |aux_array_valid_movies|
        puts aux_array_valid_movies.year  
        puts @correctyear     
      if aux_array_valid_movies.year == @correctyear 
        @correct_url = aux_array_valid_movies.poster
      end 
   end
  erb :movies_show
end
get "/movies_show" do
   # arraymovies = allmovies.find_movie_by_relative(user_input_text)
   # @array_valid_movies = allmovies.valid_picture(arraymovies)
   
   # @array_valid_movies.each do |aux_array_valid_movies|
   #    if aux_array_valid_movies.year == @correctyear 
   #      @correct_url = aux_array_valid_movies.poster
   #      puts "pasoooooooooooooooooooooooooo+++++++++++++++++++++++++++++++++++++++++++++++"
   #    else
   #      puts "pasooooooooooooooooooooooSINO SINO SINO SINO oooo+++++++++++++++++++++++++++++++++++++++++++++++"
   #    end 
   # end
   erb :movies_show
end
