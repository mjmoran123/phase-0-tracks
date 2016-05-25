puts "What's the hamster's name?"
name = gets.chomp

puts "How noisy is your hamster? (1 is very quiet, 10 is REALLY LOUD)"
noise = gets.chomp
while noise.to_i > 10 || noise.to_i < 1 # make sure integer between 1 and 10
	puts "Enter an integer from 1 to 10!"
	noise = gets.chomp
end

noise = noise.to_i

puts "What color is #{name}'s fur?"
fur = gets.chomp

puts "Do you think #{name} is a good candidate for adoption? (y/n)"
adopt = gets.chomp
while adopt != "y" && adopt != "n" #make sure y or n
	puts "y or n!"
	adopt=gets.chomp
end

if adopt == "y"
	adopt = true
else
	adopt = false
end

puts "That's great. Estimate #{name}'s age in years. Give a numerical estimate."
age = gets.chomp
if age == ""
	age = nil
else
	if age.to_f == 0.0
	while age.to_f == 0.0
		puts "Please enter a numeral, not a string. If you don't know, leave it blank."
		age = gets.chomp
		age = age.to_f
	end
	elsif age == ""
	   	age = nil
	else
		age = age.to_f
	end
end






puts "##############PRINT THIS VERY IMPORTANT HAMSTER CAGE TICKET##############\n Name: #{name} \n Noise Level: #{noise} \n Fur Color: #{fur} \n Ready for adoption: #{adopt} \n Age: #{age}"