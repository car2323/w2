class Fizzbuzz
  def add(numberp)
  	 numberp = numberp.to_i
      if ((numberp % 3) == 0 )
       answer_number = "Fizz"
      elsif ((numberp % 5) == 0 )
       answer_number = "Buzz"
      else
      	answer_number = numberp
      end
      if ((numberp % 3) == 0 ) && ((numberp % 5) == 0 )
      	answer_number = "FizzBuzz"
      end
      answer_number
  end
end