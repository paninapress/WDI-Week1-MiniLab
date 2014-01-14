class Animal
		attr_accessor :a_name, :a_age, :gender, :species #, :toys

	def initialize(a_name, a_age, gender, species) #toys = nil)
			@a_name = a_name
			@a_age = a_age
			@gender = gender
			@species = species
			#@toys = toys
	end

	#def no_animals? #returns true if there are no animals in the shelter
	#	@animals.nil?
	#end
end	#end of class Animal