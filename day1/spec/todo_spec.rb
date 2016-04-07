require_relative "lib/classtask.rb"
require_relative "lib/classtodolist.rb"
RSpec.describe "task" do 
   before :each do
    @task_object = Task.new("Buy the dog")
    @task2_object = Task.new("Walk the milk")
    @task3_object = Task.new("Turn off the ac")
    @todolist_object = Todolist.new ("Carlos")
   end
   it "#complete?" do
   	 expect( @task_object.complete? ).to eq (false)  
   end
   it "#complete!" do
     @task_object.complete!
     expect( @task_object.complete? ).to eq (true)  
   end
   it "#make_incomplete!" do
     @task_object.make_incomplete!
     expect( @task_object.complete? ).to eq (false)  
   end
   it "#update_content!" do
     @task_object.update_content!("Walk the dog")
     @task2_object.update_content!("Buy the milk")
     expect( @task_object.check_content ).to eq ("Walk the dog")
     expect( @task2_object.check_content ).to eq ("Buy the milk") 
   end
   it "#add_task" do
     @task_object.update_content!("Walk the dog")
     @task2_object.update_content!("Buy the milk")
     @todolist_object.add_task(@task_object)
     @todolist_object.add_task(@task2_object)
     expect( @todolist_object.check_array(0) ).to eq ("Walk the dog")
     expect( @todolist_object.check_array(1) ).to eq ("Buy the milk")
   end
   it "#delete_task" do
     @task_object.update_content!("Walk the dog")
     @task2_object.update_content!("Buy the milk")
     @todolist_object.add_task(@task_object)
     @todolist_object.add_task(@task2_object)
     @todolist_object.delete_task(1) #puedo pasar el objeto task or el objeto task2.id directo aqui, en vez del numero 1
     expect( @todolist_object.check_array(0) ).to eq ("Walk the dog")
     #expect( @todolist_object.check_array(1) ).to eq ("Walk the milk") #Use this one just for check, the array with one position 
   end
   it "#find_task_by_id" do
     @task_object.update_content!("Walk the dog")
     @task2_object.update_content!("Buy the milk")
     @todolist_object.add_task(@task_object)
     @todolist_object.add_task(@task2_object)
     expect( @todolist_object.find_task_by_id(@task_object.id) ).to eq (true)
   end

   it "#sort_by_created" do
     @task_object.update_content!("Walk the dog")
     @task2_object.update_content!("Buy the milk")
     @task_object.update_time!(@task_object.created_at + 50)
     @task2_object.update_time!(@task_object.created_at + 10)
     @task3_object.update_time!(@task_object.created_at + 80)

     @todolist_object.add_task(@task_object)
     @todolist_object.add_task(@task2_object)
     @todolist_object.add_task(@task3_object)
     
     user_var = "DESC"
     @todolist_object.sort_by_created(user_var)
     expect( @todolist_object.check_array(0) ).to eq ("Turn off the ac")
     expect( @todolist_object.check_array(1) ).to eq ("Buy the milk")
     expect( @todolist_object.check_array(2) ).to eq ("Walk the dog")
   end
    it "#save" do
      @task_object.update_content!("Walk the dog")
      @task2_object.update_content!("Buy the milk")
      @task_object.update_time!(@task_object.created_at + 50)
      @task2_object.update_time!(@task_object.created_at + 10)
      @task3_object.update_time!(@task_object.created_at + 80)

      @todolist_object.add_task(@task_object)
      @todolist_object.add_task(@task2_object)
      @todolist_object.add_task(@task3_object)

      @todolist_object.save
    end
end
