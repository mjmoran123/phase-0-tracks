 puts "What is your name?"
 name = gets.chomp

 puts "How old are you? Enter an integer numeral to represent your age in years."
 age = gets.chomp.to_i

 puts "What year were you born? Enter in yyyy format."
 birth_year = gets.chomp.to_i

 if Time.new.year.to_i - birth_year = age || Time.new.year.to_i - birth_year - 1 = age #check to see if vampire is lying. allow for birthday past date in current year.
 	vampire = false
 else
 	vampire = true
 end 

 puts "Our company cafeteria serves garlic bread. Should we order some for you?"
 garlic = gets.chomp

 puts "Would you like to enroll in the company's health insurance?"
 insurance = gets.chomp