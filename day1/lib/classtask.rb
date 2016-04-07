class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @status = false
        @created_at = Time.new(2016, 4, 4, 12, 4, 59) 
        @updated_at = nil
    end
    def complete?
    	@status
    end
    def complete!
    	@status = true
    end
    def make_incomplete!
    	@status = false
    end
    def update_content!(stringp)
    	@content = stringp
    	updated_at = Time.new(2016, 4, 4, 12, 10, 59) 
    end
    def check_content
    	@content
    end
    def update_time!(timep)
        @created_at = timep
    end
end