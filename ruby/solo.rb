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
example_accessories = [
							"banana",
							"uke",
							"Teem",
							"freeze ray",
							"papoy", 
							"technical drawings",
							"bomb",
							"poochie",
							"hypno hat",
							"crown"
						]
dave = Minion.new(2,"middle_part","average_pill")
dave.accessory = example_accessories.sample
dave.greet
dave.eat_bananas(3)
5.times { dave.work }
p dave.accessory
p dave.eyes
p dave.hair
p dave.body
