class Calculator
  def initialize (numero1p, numero2p, operationp)	
    @number1 = numero1p
    @number2 = numero2p
    @operation = operationp
  end
  def result_operation
  	if @operation == "+"
  		result = sum
  	elsif @operation == "-"
  		result = rest
  	elsif @operation == "*"
  		result = multi
  	elsif @operation == "/"
        result = div
  	else
  		puts "E R R O R   O P E R A T I O N"
  	end		
  end


  def div 
  	value_return = @number1 / @number2
  	value_return
  end

  def multi 
  	value_return = @number1 * @number2
  	value_return
  end

  def rest 
  	value_return = @number1 - @number2
  	value_return
  end

  def sum 
  	value_return = @number1 + @number2
  	value_return
  end
end