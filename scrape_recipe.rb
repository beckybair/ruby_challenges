# Scrape a Recipe

#Start your script by requiring the nokogiri gem and also one of its dependencies:
require 'nokogiri'
require 'open-uri'

#Next, get the HTML for the recipe page and assign it to a variable:
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

#Search the HTML for different types of elements until you find the right element for the list of ingredients:
#Once you find the class for the list of ingredients, grab the list:
list = doc.css('.components-item')

#Now you have a bunch of elements with more HTML and content inside. You need to loop through the elements and puts the content that is each ingredient.

list.each do |item|
	puts item.inner_html
end
