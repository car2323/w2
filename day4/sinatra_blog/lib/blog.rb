#Blog class
require_relative "post.rb"
require 'pry'
class Blog
    attr_accessor :posts, :user
    def initialize(userp)
        @user = userp
        @posts = []
    end

    def add_post (object_post)
        @posts.push(object_post)
    end
    def delete_post (titlep)
        @posts.delete_if{|aux_array| aux_array.title == titlep} 
        #@post.delete_at(idp)
    end
    def find_post_by_title(titlep) 
      post = []
        @posts.each do |aux_post|
          if aux_post.title == titlep
            post.push(aux_post)
          end
        end
        post
      end
    def sort_by_created (user_varp)
      puts "pasoooooooooooooooooooooooooooo por la claseeeeeeeee"
        if user_varp == "ASC"
            aux_array = @posts.sort { | x, y | x.created_at <=> y.created_at }
            @posts = aux_array
        elsif user_varp == "DESC"
            aux_array = @posts.sort { | x, y | y.created_at <=> x.created_at }
            @posts = aux_array
        end
    end
    def update_text(titlep, text_newp)
      aux_post = find_post_by_title(titlep)
      if aux_post != nil
        # binding.pry
        aux_post[0].text = text_newp
        aux_post[0].updated_at = Time.now
      end
    end
    def check_array (positionp)
      @posts[positionp].title
    end
    def check_posttext(titlep)
         aux_post = find_post_by_title(titlep)
      if aux_post != nil
          aux_post[0].text
      end      
    end
end