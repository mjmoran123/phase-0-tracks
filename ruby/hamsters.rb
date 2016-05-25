puts "What's the hamster's name?"
name = gets.chomp
puts "How noisy is your hamster? (1 is very quiet, 10 is REALLY LOUD)"
noise = gets.chomp
while noise.to_i > 10 || noise.to_i < 1 # make sure integer between 1 and 10
	puts "Enter an integer from 1 to 10!"
	noise = gets.chomp
end
puts "What color is #{name}'s fur?"
fur = gets.chomp
puts "Do you think #{name} is a good candidate for adoption? (y/n)"
adopt = gets.chomp
while adopt != "y" && adopt != "n" #make sure y or n
	puts "y or n!"
	adopt=gets.chomp
end
puts "That's great. Estimate #{name}'s age in years. Give a numerical estimate."
age = gets.chomp.to_f
if adopt == "y"
	puts "Thanks for telling us that #{name} is a #{noise} out of 10 on the noisy scale, is #{fur} and is about #{age} years young and is ready for adoption."
else
	puts "Thanks for telling us that #{name} is a #{noise} out of 10 on the noisy scale, is #{fur} and is about #{age} years young and is not ready for adoption."
end