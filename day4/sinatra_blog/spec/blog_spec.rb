require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"
RSpec.describe "blog" do 
   before :each do
       @post0_object = Post.new("first post test", "text1 post, text1 post, text1 post") 
       @post1_object = Post.new("second post test", "text2 post, text2 post, text2 post") 
       @post2_object = Post.new("third post test", "text3 post, text3 post, text3 post") 

       @blog_object = Blog.new("Carlos")
    end
   
   it "#add_post" do
     @blog_object.add_post(@post0_object)
     @blog_object.add_post(@post1_object)
     @blog_object.add_post(@post2_object)

     expect( @blog_object.check_array(0) ).to eq ("first post test")
     expect( @blog_object.check_array(1) ).to eq ("second post test")
     expect( @blog_object.check_array(2) ).to eq ("third post test")
   end
   it "#delete_post" do
     @blog_object.add_post(@post0_object)
     @blog_object.add_post(@post1_object)
     @blog_object.add_post(@post2_object)

     @blog_object.delete_post("second post test") 

     expect( @blog_object.check_array(0) ).to eq ("first post test")
     expect( @blog_object.check_array(1) ).to eq ("third post test")
   end
   it "#find_post_by_title" do
     @blog_object.add_post(@post0_object)
     @blog_object.add_post(@post1_object)
     @blog_object.add_post(@post2_object)

     expect( @blog_object.find_post_by_title("third post test") ).not_to be_empty
   end

   it "#sort_by_created" do
     @blog_object.add_post(@post0_object)
     @blog_object.add_post(@post1_object)
     @blog_object.add_post(@post2_object)
                #ASC
     user_var = "DESC"
     @blog_object.sort_by_created(user_var)

     expect( @blog_object.check_array(0) ).to eq ("third post test")
     expect( @blog_object.check_array(1) ).to eq ("second post test")
     expect( @blog_object.check_array(2) ).to eq ("first post test")
   end
    it "#update_text" do
     @blog_object.add_post(@post0_object)
     @blog_object.add_post(@post1_object)
     @blog_object.add_post(@post2_object)

     text_new = "ccardo"
     title_var = "third post test"
     
     @blog_object.update_text(title_var, text_new)


     expect( @blog_object.check_posttext(title_var) ).to eq ("ccardo")    
    end
end
