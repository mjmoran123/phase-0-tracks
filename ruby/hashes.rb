 # PSEUDOCODE
 # Initialize a questions hash of the keys to use in the client has paired with appropriate questions to get at the information you would like from the user for the client hash.
 # Initialize an empty client hash to be populated by keys and replies from prompts using the questions hash
 # Write a loop that prompts user and stores appropriate data based on the type encoded in the last character in the symbol name to convert data to appropriate type.
 # Print hash back for user.
 # Prompt user for an update to a key.
 # 	if change is desired, update key
 # 	else print hash and exit.
 											#encode symbols with data type so correct conversion can be made S-string, I-int, B-boolean
questions = {
	name_S: "Enter Name:", 
	age_I: "Enter Age:",
	children_I: "Enter number of children:",
	decortheme_S: "Enter your decor theme:",
	solid_B: "Do you like solids? (y/n)",
	stripe_B: "Do you like stripes? (y/n)",
	pattern_B: "Do you like patterns? (y/n)",
	budget_I: "How many dollars are you willing to spend?"
	} 

 client = {}

 questions.each do |key,value| 

 	puts value
 	input = gets.chomp


 	last_letter = key[-1]
 	if last_letter == "I"
 		info = input.to_i
 	elsif last_letter == "B"
 		if input == "y"
 			info = true
 		else
 			info = false
 		end
 	else
 		info = input.to_s
 	end

 	client[key] = info
 		
 end

 p client

