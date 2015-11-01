# class name must be capitalized in the Ferret class
# this doesn't break any code, but Chinchilla is spelled wrong here; consistency is good!
# the get_name method was missing in the Chinchilla class
# name should be parrot_name in the Parrot class
# the tweet method was missing in the Parrot class

# I consolidated the code to one class...

class Pets
 
	def set_name=(pet_name)
		@name = pet_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def set_noise= (pet_noise)
		@noise = pet_noise
	end
	
	def get_noise
		return @noise
	end
 
end

my_ferret = Pets.new
my_ferret.set_name= "Fredo"
my_ferret.set_noise= "squeeeee"
ferret_name = my_ferret.get_name
ferret_noise = my_ferret.get_noise
 
my_parrot = Pets.new
my_parrot.set_name= "Budgie"
my_parrot.set_noise= "tweeeets"
parrot_name = my_parrot.get_name
parrot_noise = my_parrot.get_noise
 
my_chinchilla = Pets.new
my_chinchilla.set_name= "Dali"
my_chinchilla.set_noise= "eeeep"
chinchilla_name = my_chinchilla.get_name
chinchilla_noise = my_chinchilla.get_noise
 
puts "#{ferret_name} says #{ferret_noise}, 
#{parrot_name} says #{parrot_noise}, 
and #{chinchilla_name} says #{chinchilla_noise}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect