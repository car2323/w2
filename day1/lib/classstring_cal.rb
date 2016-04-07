class String_cal
   def initialize 
     @string == "" 
   end
  def add(stringp)

   	if stringp.length == 1
	   aux_number = stringp.to_i
	elsif stringp.length == 0
		aux_number = 0
	elsif stringp.length == 3
		number1 = stringp [0]
		number2 = stringp [2]
		number1 = number1.to_i
		number2 = number2.to_i
		aux_number = number1 + number2
	elsif stringp.length > 3
       
       
       aux_number = 0
	   aux_array.each do | array |
	   	     aux_number = aux_number + array.to_i
	   end
	end	
    aux_number
  end

end