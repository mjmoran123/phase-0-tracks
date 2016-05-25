puts "What's the hamster's name?"
name = gets.chomp
puts "How noisy is your hamster? (1 is very quiet, 10 is REALLY LOUD)"
noise = gets.chomp
if noise.to_i < 11 && > 0
	puts "Enter an integer from 1 to 10!"
end
noise=gets.chomp