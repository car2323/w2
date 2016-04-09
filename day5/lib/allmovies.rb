#Class whit all movies
require 'pry'
require "imdb"
class All_movie
      def find_movie_by_relative(relative_wordp)
         object_movie = Imdb::Search.new(relative_wordp)
         movies = object_movie.movies
         movies
      end
      def valid_picture(array_moviesp)
        count = 0
        movies_with_poster = [] 
        array_moviesp[0..25].each do |aux_array_movie|    #solo para hacer esto mas rapido  
          postervar = aux_array_movie.poster
          if ((postervar) && ( count < 9))
             movies_with_poster.push(aux_array_movie)
             count = count + 1
          end
        end
        movies_with_poster    
      end
end