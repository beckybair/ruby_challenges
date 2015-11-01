#Now it’s time to write your own case statement! This case statement will check the weather and then give advice about what to wear. Here are your steps:
#Create a variable that will hold the weather. Just to make things easier, the weather should be limited to a single word: sunny, cloudy, foggy, rainy, etc.
the_weather = "sunny"

#Start your case statement with the keyword case followed by your variable.
case the_weather
#Next, use the when keyword to check a string that the weather variable could be equal to, followed by a puts line that gives advice about what to wear.
when 'sunny'
	puts "Put on your shades."
	
#Create as many when / puts lines as you need to check for all kinds of weather.
when 'rainy'
	puts "Grab your unbrella."
when 'frost'
	puts "Get our windshield scrapper."
when 'Snowy'
	puts "Mittens and Hat would be good."
when 'Foggy'
	puts "Don't forget to turn on your headlights."

#Don’t forget to close your case statement with the end keyword.
end
