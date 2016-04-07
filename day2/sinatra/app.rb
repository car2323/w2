# server.rb
require "sinatra"
get "/about" do
	erb :about
#@var_user = "Hello word"
#erb (:about)
end
get "/time" do
	erb :time
end
get "/hours/:time_back" do
	@time = Time.now 
	integer_var = params[:time_back].to_i
    @time = @time - (60 * 60 * integer_var) 
	erb :hours
end