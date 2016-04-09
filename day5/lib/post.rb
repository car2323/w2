#Post class

class Post
    attr_reader :created_at, :title
    attr_accessor :text, :updated_at
    def initialize(titlep, textp)
      @title = titlep
      @created_at = Time.now
      @text = textp
      @updated_at = nil
    end
    def test_atribute?
       value_return = false
       if ((@title != "" ) && (@created != nil) && (@text != "") && (updated_at == nil))
       	value_return = true
       end	
       value_return
    end
end