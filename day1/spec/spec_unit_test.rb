require_relative "lib/classstring_cal.rb"

RSpec.describe "String sum calculator" do 

   it "returns the sum for multiple numbers" do
     calculator = String_cal.new
   	 expect( calculator.add("1,2,3,4") ).to eq (10)  # == 10 
     expect( calculator.add("25,25,25") ).to eq (75) # == 75
   end
   it "For One numbers" do
     calculator = String_cal.new
   	 expect( calculator.add("5") ).to eq (5)  # == 10 
     expect( calculator.add("3") ).to eq (3) # == 75
   end
   it "It's cero/nill" do
     calculator = String_cal.new
   	 expect( calculator.add("") ).to eq (0)  # == 10 
   end  
end


     

