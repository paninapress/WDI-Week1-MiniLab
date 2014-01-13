class Client
		attr_accessor :name, :age, :num_kids, :num_pets

	def initialize(name, age, num_kids = nil, num_pets = nil)
			@name = name
			@age = age
			@num_kids = num_kids
			@num_pets = num_pets
	end 
end #end of class Client