 # PSEUDOCODE
 # Initialize a questions hash of the keys to use in the client has paired with appropriate questions to get at the information you would like from the user for the client hash.
 # Initialize an empty client hash to be populated by keys and replies from prompts using the questions hash
 # Write a loop that prompts user and stores appropriate data based on the type encoded in the last character in the symbol name to convert data to appropriate type.
 # Print hash back for user.
 # Prompt user for an update to a key.
 # 	if change is desired, update key
 # 	else print hash and exit.

 def change_type (key, input)           #method to choose type for data
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

end
 											#encode symbols with data type so correct conversion can be made S-string, I-int, B-boolean
questions = {
	name_S: "Enter Name:", 
	age_I: "Enter Age:",
	children_I: "Enter number of children:",
	decor_theme_S: "Enter your decor theme:",
	solid_B: "Do you like solids? (y/n)",
	stripe_B: "Do you like stripes? (y/n)",
	pattern_B: "Do you like patterns? (y/n)",
	budget_I: "How many dollars are you willing to spend?"
	} 

 client = {}

 questions.each do |key,value|    #iterate through each key/question pair

 	puts value
 	input = gets.chomp            #store user input in string input
	info = change_type(key, input)              #change data according to last letter of key
 	client[key] = info          #populate client hash with data
 		
 end


 p client                       #print client hash to error check

 puts "Which key would you like to update? If none, type none."
 update = gets.chomp
 if update != "none"
  	sym = update.to_sym
 	puts "What would you like to change it to?"
  	update = gets.chomp
  	update = change_type(sym, update)
 end

 client[sym] = update

 p client


