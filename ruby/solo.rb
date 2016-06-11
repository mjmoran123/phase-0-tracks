# Minion class
# read and write attributes: accessory
# read attributes: number of eyes, hair type, body type
# methods: greet (greets you with a friendly "Bello!")
# 		 eat_bananas (takes in an integer and eats that number of bananas)
# 		 works (works in lab, randomly, with 70% chance, the work will result in explosion)

class Minion
	attr_accessor :accessory
	attr_reader :eyes, :hair, :body

	def initialize(number_of_eyes, hair_type, body_type)
		@eyes = number_of_eyes
		@hair = hair_type
		@body = body_type
	end

	def greet
		puts "Bello!"
	end

	def eat_bananas(number_of_bananas)
		number_of_bananas.times { puts "eats a banana" }
	end

	def work
		prob = (1..100).to_a
		if prob.sample < 71
			puts "KABOOM!"
		else
			puts "Caution! Minion at work."
		end
	end
end

########## RELEASE 1 DRIVER CODE #############
# example_accessories = [
# 							"banana",
# 							"uke",
# 							"Teem",
# 							"freeze ray",
# 							"papoy", 
# 							"technical drawings",
# 							"bomb",
# 							"poochie",
# 							"hypno hat",
# 							"crown"
# 						]
# dave = Minion.new(2,"middle_part","average_pill")
# dave.accessory = example_accessories.sample
# dave.greet
# dave.eat_bananas(3)
# 5.times { dave.work }
# p dave.accessory
# p dave.eyes
# p dave.hair
# p dave.body


def print_minions(minion_array)
	minion_count = 1
	minion_array.each do |minion|

		puts "Minion  # #{minion_count}"
		puts "Minion has #{minion.eyes} eyes, a #{minion.hair} hairstyle, a #{minion.body} body type, and is carrying a #{minion.accessory}."
		minion_count += 1 	
	end
end

def user_interface
	los_minions = []
	flag = true
	while flag
		puts "Make a minion. To begin, enter your minion's number of eyes. When done making minions, enter quit"
		info = gets.chomp
		if info == "quit"
			flag = false
			break
		else
			eyes = info.to_i
		end
		puts "Enter the minion's hair style."
		hair = gets.chomp
		puts "Enter your minion's body type."
		body = gets.chomp
		puts "Finally, give your minion an accessory. Might I recommend a banana..."
		accessory = gets.chomp
		a_minion = Minion.new(eyes,hair,body)
		a_minion.accessory = accessory
		los_minions << a_minion	
	end
	print_minions(los_minions)
end

user_interface






