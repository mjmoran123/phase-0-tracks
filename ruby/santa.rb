class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	

	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		swap_index = @reindeer_ranking.index(reindeer)
		@reindeer_ranking[swap_index] = @reindeer_ranking.last
		@reindeer_ranking[@reindeer_ranking.length - 1] = reindeer
		p @reindeer_ranking
		@reindeer_ranking
	end

	# def set_gender(new_gender)
	# 	@gender = new_gender
	# end
	# def get_age
	# 	@age
	# end

	# def get_ethnicity
	# 	@ethnicity
	# end
    
	def santa_info  #added method to assist testing
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
		p "Reindeer Ranking: #{@reindeer_ranking}"
	end
end

################# RELEASE 0 AND 1 DRIVER CODE#################
# claus = Santa.new
# claus.speak
# claus.eat_milk_and_cookies("chocolate chip")

# santas = []
# example_genders = ["female", "male", "fluid", "agender", "bigender", "N/A"]
# example_ethnicities = ["Albanian", "Basque", "Congolese"]

# example_genders.length.times do |i|
# 	example_ethnicities.length.times do |j|
# 		santas << Santa.new(example_genders[i], example_ethnicities[j])
# 	end
# end

# p santas

############# RELEASE 2 AND 3 DRIVER CODE ##################

# kris = Santa.new("male", "German")
# puts kris.age
# puts kris.ethnicity
# kris.get_mad_at("Dancer")
# kris.santa_info
# kris.gender = ("bigender")
# 10.times { kris.celebrate_birthday }
# kris.santa_info
# puts kris.age

################ RELEASE 4 DRIVER CODE #####################
example_genders = ["female", "male", "fluid", "agender", "bigender", "N/A"]
example_ethnicities = [
						"Albanian",
						"Basque",
						"Congolese",
						"Dutch",
						"Estonian",
						"French",
						"German",
						"Hui",
						"Irish",
						"Javanese",
						"Kurdish",
						"Lebanese",
						"Malayali",
						"Norwegian"
					]
ages = (0..140).to_a
p ages
1000.times do 
	a = Santa.new(example_genders.sample, example_ethnicities.sample)
	birthdays = ages.sample
	birthdays.times { a.celebrate_birthday } #age wasn't supposed to be a setter, so I did this instead. Obviously would be easier to just change to accessor instead of just reader.
	puts a.gender
	puts a.ethnicity
	puts a.age
end




