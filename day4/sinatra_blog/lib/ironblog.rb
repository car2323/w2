require_relative "/Users/CECG/Documents/ironhack/w2/day4/sinatra_blog/lib/blog.rb"
require_relative "/Users/CECG/Documents/ironhack/w2/day4/sinatra_blog/lib/post.rb"

#today = time.strftime("%y/%m/%d")


time1 = Time.now
time2 = Time.now - 10
time3 = Time.now - 50

post1 = Post.new("titulo1post1", time1, "text111111111111111111111")

post2 = Post.new("titulo1post2", time3, "text222222222222222222222")

post3 = Post.new("titulo1post3", time2, "text333333333333333333333")

todospost = Blog.new([post1, post2, post3])
