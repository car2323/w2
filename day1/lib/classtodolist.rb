require_relative "/Users/CECG/Documents/ironhack/w2/day1/lib/classtask.rb"
require "yaml/store"

class Todolist
    attr_reader :tasks, :user
    def initialize (userp)
        @todo_store = YAML::Store.new("/Users/CECG/Documents/ironhack/w2/day1/public/tasks.yml")
        @tasks = []
        @user = userp
    end
     def save
          @todo_store.transaction do 
          @todo_store[@user] = @tasks
          end
     end
    def add_task (object_taskp)
    	@tasks.push(object_taskp)
        puts "paso"
    end
    def check_array (positionp)
       @tasks[positionp].check_content
    end
    def delete_task (idp)
        @tasks.delete_if{|aux_array| aux_array.id == idp}	
        #@tasks.delete_at(idp)
    end
    def find_task_by_id(idp)
    	value_return = false
    	@tasks.each do |aux_array|
    	  if aux_array.id == idp
    	  	value_return = true
    	  end
    	end
    	value_return
    end
    def sort_by_created (user_varp)
        if user_varp == "ASC"
            aux_array = @tasks.sort { | x, y | x.created_at <=> y.created_at }
            @tasks = aux_array
        elsif user_varp == "DESC"
    	    aux_array = @tasks.sort { | x, y | y.created_at <=> x.created_at }
            @tasks = aux_array
        else
            puts "E R R O R        V A L U E"
        end
    end
end