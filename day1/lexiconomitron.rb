class Lexiconomitron
	
	def eat_t (string)
		@string = string
		i =0
		new_string = ""
		while i < string.length
			if string[i].downcase != "t"
              new_string = new_string + string [i]
            end
            i= i+1
		end
		new_string
	end

	def shazam (array)
		new_array = []
		new_string = ""
		i=0
		while i < array.length
			array[i].reverse!
			i = i+1
		end 
		string1 = eat_t(array[0])
		stringfinal = eat_t(array[array.length-1])
		new_array.push(string1)
		new_array.push(stringfinal)
		new_array
	end

    def loompa (array)
		new_array = []
		new_string = ""
		i=0
		
		while i < array.length
			if array[i].length <= 3
			new_array.push(array[i])
			end
		i = i+1
		end 

		i=0
        while i < new_array.length
			new_array[i] = eat_t(new_array[i])
			i = i+1
		end 
		new_array
	end
	
end