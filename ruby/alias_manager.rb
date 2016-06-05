 # pseudocode for spy name algorithm

 # Split the name string into an array of a first and last name
 # Create a new array for the spy name that takes in the 1th element of the original array as the 0th and 0th as 1th
 # Write method to iterate through each name string and change letters accordingly
 # 	downcase strings
 # 	if on "aeiou" change mod 5
 # 	if on "bcdfghjklmnpqrstvwxyz" and change mod 21
 # Join the array of spy names into a new string

 

 def character_changer(name)
 	name_chars_array = name.split('') #make array of characters in single name
 	name_chars_array.map! do |char|  #iterate though each character and change accordingly
 		if "aeiou".include? char
 			"aeiou"[("aeiou".index(char) + 1) % 5]
 		elsif "bcdfghjklmnpqrstvwxyz".include? char
 			"bcdfghjklmnpqrstvwxyz"[("bcdfghjklmnpqrstvwxyz".index(char) + 1) % 21]
 		else
 			char   #don't change characters that aren't letters
 		end
 	end
 	name_chars_array.join.capitalize #return new name string
 end

 def spy_nameifier(boring_name)
 	full_name_array = boring_name.split(' ') #make array of original names
 	full_name_array.map! { |name| name.downcase } #downcase all names
 	full_name_array.map! { |name| character_changer(name) } #call character_changer method on each name
 	full_name_array[1] + " " + full_name_array[0] #return reversed spy name
 end

 def user_interface
 	alias_hash = {}
 	flag = true
 	while flag 
 		puts "Type in a name you want to spyify. When you are done, type quit."
 		name = gets.chomp
 		if name == "quit"
 			flag = false
 		else
 			alias_hash[name] = spy_nameifier(name)
 			puts spy_nameifier(name)
 		end
 	end
 	alias_hash.each { |name,spy_name| puts "#{spy_name} is actually #{name}." }
 end

user_interface
 #p spy_nameifier("Felicia Torres")