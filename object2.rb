class Yarn
	def set_weight= (weight)
		@weight = weight
	end
	
	def get_weight
		return @weight
	end
	
	def set_color= (color)
		@color = color
	end
	
	def get_color
		return @color
	end
end

class Thin < Yarn
	def phrase
		return " - Oh no, too tiny!"
	end
end

class Medium < Yarn
	def phrase
		return " - knittable"
	end
end

class Thick < Yarn
	def phrase
		return " - Oh yes, very knittable!"
	end
end

my_thin = Thin.new
my_thin.set_weight = "lace"
my_thin.set_color = "black"
thinweight = my_thin.get_weight
thincolor = my_thin.get_color

my_medium = Medium.new
my_medium.set_weight = "worsted"
my_medium.set_color = "pink"
mediumweight = my_medium.get_weight
mediumcolor = my_medium.get_color

my_thick = Thick.new
my_thick.set_weight = "bulky"
my_thick.set_color = "blue"
thickweight = my_thick.get_weight
thickcolor = my_thick.get_color

puts "#{thinweight} and #{thincolor}#{my_thin.phrase},
#{mediumweight} and #{mediumcolor}#{my_medium.phrase},
#{thickweight} and #{thickcolor}#{my_thick.phrase}!"

puts my_thin.inspect
puts my_medium.inspect
puts my_thick.inspect
