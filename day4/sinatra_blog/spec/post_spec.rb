require_relative "../lib/post.rb"
require_relative "../lib/blog.rb"
RSpec.describe "post" do 
   before :each do
    @post_object = Post.new("first post test", "text1 post, text1 post, text1 post") 
   end
   it "#test_atribute?" do
     expect( @post_object.test_atribute? ).to be (true) 
   end 
end
