require "sinatra"
require "sinatra/reloader"

require_relative("lib/blog.rb")
require_relative("lib/post.rb")

post0_object = Post.new("first post test", "text1 post, text1 post, text1 post") 
post1_object = Post.new("second post test", "text2 post, text2 post, text2 post") 
post2_object = Post.new("third post test", "text3 post, text3 post, text3 post") 

blog_object = Blog.new("Carlos")

blog_object.add_post(post0_object)
blog_object.add_post(post1_object)
blog_object.add_post(post2_object)

get "/" do
   @blog_object1 = blog_object 
  erb :home
end

get "/new_post" do
  erb :new_post
end

post "/add_post" do
  @blog_object1 = blog_object
  title= params[:title]
  text= params[:text]
  post_object = Post.new(title, text) 
  @blog_object1.add_post(post_object)    
  redirect :/
end

post "/sort_by_created" do
  puts "****************************************************************"
         puts "****************************************************************"
          puts "****************************************************************"
           puts "****************************************************************"
    if params[:operation] == "ASC"
      blog_object.posts = blog_object.sort_by_created("ASC")
    elsif params[:operation] == "DESC"
      blog_object.posts = blog_object.sort_by_created("DESC")
    end
     @blog_object1 = blog_object
   redirect :/
end