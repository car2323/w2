# server.rb
require "sinatra"
require_relative "lib/classcalculator.rb"


get "/home" do
	erb (:home)
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  if params[:operation] == "sum"
     sum_object = Calculator.new(first, second, "+")
     result = sum_object.result_operation
     "#{first} + #{second} = #{result}"
   elsif params[:operation] == "subt"
     subt_object = Calculator.new(first, second, "-")
     result = subt_object.result_operation
     "#{first} + #{second} = #{result}"
   elsif params[:operation] == "multi"
     multi_object = Calculator.new(first, second, "*")
     result = multi_object.result_operation
     "#{first} + #{second} = #{result}"
    elsif params[:operation] == "div"
     div_object = Calculator.new(first, second, "/")
     result = div_object.result_operation
     "#{first} + #{second} = #{result}"
    end
end






# get "/calc/:time_back" do
# 	@time = Time.now 
# 	integer_var = params[:time_back].to_i
#     @time = @time - (60 * 60 * integer_var) 
# 	erb :hours
# end