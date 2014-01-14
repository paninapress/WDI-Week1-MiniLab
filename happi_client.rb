class Client
		attr_accessor :c_name, :c_age, :num_kids, :num_pets

	def initialize(c_name, age, num_kids, num_pets)
			@c_name = c_name
			@c_age = c_age
			@num_kids = num_kids
			@num_pets = num_pets
	end 

	#def no_clients? #returns true if there are no animals in the shelter
	#	@clients.nil?
	#end
end #end of class Client