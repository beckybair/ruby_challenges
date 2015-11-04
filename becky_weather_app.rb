# Becky's Weather App

# include gems
require 'rubygems'
require 'yahoo-weather'

# USER INPUTS THEIR LOCATION
puts "Where are you? (enter zip code)"
@@zip_code = gets.chomp

# YOU USE A PUBLIC API TO FIND OUT WHAT THE WEATHER IS IN THEIR AREA
	# will be using the Yahoo Weather API Gem
	# Create a method that accepts the location as a parameter and then uses your weather gem of choice to determine the weather in the user’s location.
	# Your method should ultimately determine the weather as a string: sunny, cloudy, snowy, rainy, etc.
class Weather
	@client = YahooWeather::Client.new
	# look up WOEID via http://weather.yahoo.com; enter location by city
	# name or zip and WOEID is at end of resulting page url.  
	#response = @client.lookup_by_woeid(12781490)
	response = @client.lookup_location(@@zip_code)
	@@condition = response.condition.text
end

# straight text output
print <<edoc
#{response.title}
#{response.condition.temp} degrees
#{response.condition.text}
edoc
	
# DEPENDING ON THE WEATHER, YOU WILL SERVE THEM ONE OF THE FOLLOWING SCREENS
the_weather = @@condition

case the_weather
when 'sunny'
	puts "it’s 85 degrees and sunny!"
when 'cloudy'
	puts "55 degrees and crazy cloudy!"
when 'rainy'
	puts "60 degrees and crazy rainy!"
when 'snowy'
	puts "32 degrees and super snowy!"
else
	puts the_weather
end

# THEN TURN IT INTO A FORECASTING APP
# SHOW A FORECAST FOR THE NEXT FIVE DAYS