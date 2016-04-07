require "sinatra"
require "sinatra/reloader"

require_relative("lib/classtask.rb")
require_relative("lib/classtodolist.rb")

 

get "/" do
	task_object = Task.new("Buy the Milk")
    task2_object = Task.new("Walk the Dog")
    task3_object = Task.new("Turn off the ac")

    todolist_object = Todolist.new("Carlos")
    todolist_object.add_task(task_object)
    todolist_object.add_task(task2_object)
    todolist_object.add_task(task3_object)

    @todolist_object1 = todolist_object
   

  erb :task_index
end
get "/new_task" do
   erb :new_task
end 
post "/add_task" do
	#params[:content]
  
    # Create a new task(Task.new)
    # Add it to the todo_list (with the todo_list.add_task method)
    # Save the todo_list (with the todo_list.save method)
    # Redirect the user back to the /tasks route





	redirect to("/")
end