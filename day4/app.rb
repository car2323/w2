require "sinatra"
get "/" do
	"hello, world"
end
get "/real_page" do
	"the other page"
end
get "/hi" do
	redirect "real_page"
end

