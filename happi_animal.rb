class Animal
		attr_accessor :name, :age, :gender, :species, :toys

	def initialize(name, age, gender, species, toys = nil)
			@name = name
			@age = age
			@gender = gender
			@species = species
			@toys = toys
	end
end	#end of class Animal