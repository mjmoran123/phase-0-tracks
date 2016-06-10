class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
	end

	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end
end

# claus = Santa.new
# claus.speak
# claus.eat_milk_and_cookies("chocolate chip")

santas = []
example_genders = ["female", "male", "fluid", "agender", "bigender", "N/A"]
example_ethnicities = ["Albanian", "Basque", "Congolese"]

example_genders.length.times do |i|
	example_ethnicities.length.times do |j|
		santas << Santa.new(example_genders[i], example_ethnicities[j])
	end
end

p santas
