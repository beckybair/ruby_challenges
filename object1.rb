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
	
	def phrase
		return "#{@weight} and #{@color} - Oh yes, very knittable!"
	end
end

my_yarn = Yarn.new
my_yarn.set_weight = "bulky"
my_yarn.set_color = "blue"

puts my_yarn.phrase