class Yarn
	attr_accessor :weight, :color
	
	def phrase
		return "#{@weight} and #{@color} - Oh yes, very knittable!"
	end
end

my_yarn = Yarn.new
my_yarn.weight = "bulky"
my_yarn.color = "blue"

puts my_yarn.phrase