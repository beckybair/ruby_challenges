#Ask the user to “Give me a number:”
puts "Give me a number:"

#Grab that number and transform it into an Integer (since it will start out as a String). HINT: use the gets method to grab the number.
#Set the resulting number to a variable, let’s call it Number 1
first_number = gets.to_i

#Add 5 to Number 1
number = first_number + 5

#Multiply the result by 2
number *= 2

#Subtract 4
number -= 4

#Divide by 2
number /= 2

#Subtract the first number from the final number
number -= first_number

#Tell us the final number
puts "Always #{number}!"
