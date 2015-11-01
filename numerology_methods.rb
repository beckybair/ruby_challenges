# My Numerology App with Methods

def get_birth_path(birthdate)
	#Next you need to add all the numbers of their birthdate together & assign the result to a new variable. You can use array syntax to access each part of their birthdate like so
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

	#Now you need to start reducing that number down to a single digit. First you’re going to convert the number back to a string so that you can use array syntax again – array syntax does not work on integers!
	#Convert the number back to a string, then follow step 3 again; get each number individually, using array syntax, and convert it to a number. Then add those two numbers together.
	number = number.to_s
	number = number[0].to_i + number[1].to_i

	#Now it’s time for an if statement! Your current number could be 1-9, or it could be greater than 9.
	#Your if statement needs to check if your number is greater than 9, and if it is, reduce again by following step 4. Otherwise, you are all set for the next step.
	if number > 9
		number = number[0].to_i + number[1].to_i
	end
	
	return number
end

def get_number_meaning(number)	
	#Now you have your single-digit birth path number! All that’s left is to display the number to the user and also the number’s meaning. For this you’ll use a case statement.
	#Your case statement should check the birth path number and then display the correct message. 
	case number
	when 1
		meaning = "Your Numerology number is: #{number}.\n One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		meaning = "Your Numerology number is: #{number}.\n This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		meaning = "Your Numerology number is: #{number}.\n Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		meaning = "Your Numerology number is: #{number}.\n This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		meaning = "Your Numerology number is: #{number}.\n This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		meaning = "Your Numerology number is: #{number}.\n This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		meaning = "Your Numerology number is: #{number}.\n This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		meaning = "Your Numerology number is: #{number}.\n This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		meaning = "Your Numerology number is: #{number}.\n This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else
		meaning = "Oh no!  Your birth path number is not 1-9!"
	end
end

#First, ask the user for their birthdate. It must be in the format MMDDYYYY
puts "What is your birthdate (MMDDYYYY)?"

#Use the gets method to get their birthdate & assign it to a variable
birthdate = gets

birth_path = get_birth_path(birthdate)

meaning = get_number_meaning(birth_path)

puts meaning
