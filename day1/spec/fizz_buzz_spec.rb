require_relative "classfizzbuzz.rb"

RSpec.describe "Number multiple 3 or 5" do 
   before :each do
    @calculator = Fizzbuzz.new
   end
   it "Test # 1" do
   	 expect( @calculator.add(7) ).to eq (7)  
     expect( @calculator.add(11) ).to eq (11) 
   end
    it "test # 2" do
      expect( @calculator.add(3) ).to eq ("Fizz")  
      expect( @calculator.add(9) ).to eq ("Fizz") 
    end
    it "test # 3" do
      expect( @calculator.add(5) ).to eq ("Buzz")  
      expect( @calculator.add(20) ).to eq ("Buzz") 
    end

    it "test # 4" do
      expect( @calculator.add(15) ).to eq ("FizzBuzz")  
      expect( @calculator.add(30) ).to eq ("FizzBuzz") 
    end 
end

