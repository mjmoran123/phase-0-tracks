 puts "What is your name?"
 name = gets.chomp

 puts "How old are you? Enter an integer numeral to represent your age in years."
 age = gets.chomp.to_i

 puts "What year were you born? Enter in yyyy format."
 birth_year = gets.chomp.to_i

 puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
 garlic = gets.chomp

 puts "Would you like to enroll in the company's health insurance? (y/n)"
 insurance = gets.chomp

#check different questions for vampire-ness and create boolean flag for different questions
#age
 if Time.new.year.to_i - birth_year = age || Time.new.year.to_i - birth_year - 1 = age #check to see if vampire is lying. allow for birthday past date in current year.
 	age_is_vampire = false
 else
 	age_is_vampire = true
 end 

 #garlic
 if garlic == "y"
 	garlic_is_vampire = true
 else
 	garlic_is_vampire = false
 end

 #insurance
 if insurance == "n"
 	insurance_is_vampire = true
 else
 	insurance_is_vampire = false
 end
 