def my_always3 (num1)

	#Tell us the final number
	(((num1 + 5) * 2 - 4) / 2 - num1)

end

#Ask the user to “Give me a number:”
puts "Give me a number:"

#Grab that number and transform it into an Integer (since it will start out as a String). HINT: use the gets method to grab the number.
#Set the resulting number to a variable, let’s call it Number 1
number = gets.to_i

puts "Always " + my_always3(number).to_s + "!"
