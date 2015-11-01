#Ask the user to “Give me a number:”
puts "Give me a number:"

#Grab that number and transform it into an Integer (since it will start out as a String). HINT: use the gets method to grab the number.
#Set the resulting number to a variable, let’s call it Number 1
first_number = gets.to_i

#Add 5 to Number 1
second_number = first_number + 5

#Multiply the result by 2
third_number = second_number * 2

#Subtract 4
fourth_number = third_number - 4

#Divide by 2
fifth_number = fourth_number / 2

#Subtract the first number from the final number
final_number = fifth_number - first_number

#Tell us the final number
puts "Always #{final_number}!"
