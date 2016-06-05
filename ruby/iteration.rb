#Release 0

def block_method
	c = "hey"
	d = "you"
	puts "this is before we take the block parameter"
	yield(c, d)
	puts "this is after we take the block parameter"
end

block_method { |a, b| puts "I am the block parameter #{a}, #{b}." }

#Release 1

movies = ["The Godfather", "Citizen Kane", "Birdman"]
best_pictures = {1974 => "The Godfather", 1941 => "Citizen Kane", 2014 => "Birdman"}

#iterate through array
movies.each do |film|
	puts film
end

#iterate through hash
best_pictures.each do |year, winner|
	puts "In #{year} the best picture goes to... #{winner}."
end

p movies

movies.map! do |film|
	film.upcase
end

p movies

#Release 2
# 1
integers = [1,2,3,4,5,6,7,8,9,10]
p integers
p integers.delete_if { |number| number < 5 }

#2
integers = [1,2,3,4,5,6,7,8,9,10]
p integers
p integers.keep_if { |number| number < 5 }

#3
integers = [1,2,3,4,5,6,7,8,9,10]
p integers
p integers.reject { |number|  number < 5  }

integers = [1,2,3,4,5,6,7,8,9,10]
p integers
p integers.reject { |number|  number > 4  }

#4
integers = [1,2,3,4,5,6,7,8,9,10]
p integers
p integers.drop_while { |number|  number < 5  }




