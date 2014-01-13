class Shelters
	attr_accessor :name, :clients, :animals

	def initialize(name, clients = [], animals = [])
		@name = name
		@clients = clients
		@animals = animals
		
	end

end #end of class Shelters