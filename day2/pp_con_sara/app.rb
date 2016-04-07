require "sinatra"
require "artii"
#get '/test/?:p1?  /?:p2?' do
get "/word/:word/?:user_font?" do
	#                             This is optional
	#                                  ||||||
	#                                  vvvvvv
	#                                  ______
	# http://localhost:4567/word/poop | / avatar
	if params[:user_font]== nil
		font_default = "slant"
	else	
		font_default = params[:user_font]
	end
    @var_word = params[:word]
    @my_artii = Artii::Base.new :font=> font_default
							
	@var_word = @my_artii.asciify(@var_word)
	erb :word
end 
​