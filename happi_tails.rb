puts "hi how are you"

require './happi_shelter'
require './happi_client'
require './happi_animal'

happi_tails = Shelters.new("Happi Tails")



def menu message
  puts `clear`
  puts "*** Happi Tails v1.0 ***\n\n"

  puts "#{message}\n\n" unless message.empty?

  puts '1 : Add animal'
  puts '2 : Add client'
  puts '3 : List all animals'
  puts '4 : List all clients'
 # puts '5 : Adopt a pet 
  #puts '6 : Animal in-take form
  puts "q : Quit\n\n"
  print '--> '
  gets.chomp
end

message = ""
choice = menu message
while choice != 'q'
  message = ""
  case choice
  when "1"
    message += 'option 1'
    # 1) ask user for animal info: a_name, a_age, gender, species, toys
	puts "Enter animal info:"
    print "Name:"; a_name = gets.chomp
    print "Age:"; a_age = gets.chomp
    print "Gender:"; gender = gets.chomp
    print "Species:"; species = gets.chomp
    #print "Any toys?: (list or type nil)" toys = gets.chomp

	# 2) use info to create instance of animal.
    happi_tails.animals << Animal.new(a_name, a_age, gender, species) #add toys later
    
    # 3) display message that unit was added
	message = "Added animal #{happi_tails.animals.last.a_name}"

  when "2"
    message += 'option 2'
    # 1) ask user for client info: c_name, age, num_kids, num_pets
	puts "Enter client info:"
    print "Name:"; c_name = gets.chomp
    print "Age:"; c_age = gets.chomp
    print "# of kids:"; num_kids = gets.chomp
    print "# of pets:"; num_pets = gets.chomp

	# 2) use info to create instance of client.
    happi_tails.clients << Client.new(c_name, c_age, num_kids, num_pets)
    
    # 3) display message that unit was added
	message = "Added client #{happi_tails.clients.last.c_name}"
	
  when "3"
    message += 'option 3'
    # List all animals 
    message = "Here are the animals available for adoption:"
    happi_tails.animals.each do |x|
    	message += "#{x.a_name}: #{x.a_age} yrs old, #{x.gender}, #{x.species}\n"
  when "4"
    message += 'option 4'
    # List all clients
    happi_tails.clients.each do |c|
		message += "#{c.c_name}, #{c.c_age}, #{c.num_kids} kids, #{c.num_pets} pets\n"
 #  when "5"
 #   message += 'option 5'
 #    Facilitate client adopts an animal
 # when "6"
 #   message += 'option 6'
 #    Facilitate client puts animal up for adoption

  end
  else
      message += "I don't understand ..."
  end
  choice = menu message
end