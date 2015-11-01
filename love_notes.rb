puts "Have you been good today? (Y/N)"
answer = gets.chomp.downcase

while (answer == "n")
	puts "It's ok, I still love you!"
	puts "Have you been good today? (Y/N)"
	answer = gets.chomp.downcase
end
