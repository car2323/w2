require_relative "lexiconomitron.rb"

RSpec.describe "#eat_t" do

  	before :each do
		@lexi = Lexiconomitron.new
	end

    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "shazam: reverse the strings of the array, removes the t and return the 1st and last word of the array" do
    	expect(@lexi.shazam(["This","is","a","boring","test"]) ).to eq( ["sih","se"] )
	end

    it "loompa get word with 3 letter or less and revome the t" do
    	expect(@lexi.loompa(["if","you","wanna","be","my","lover"]) ).to eq( ["if","you","be","my"] )
	end
	
	it "loompa get word with 3 letter or less and revome the t" do
    	expect(@lexi.loompa(["ift","you","wanna","be","myt","lover"]) ).to eq( ["if","you","be","my"] )
	end
end

