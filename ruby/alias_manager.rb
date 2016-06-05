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
 	return name_chars_array.join #return ne name string
 end

 def spy_nameifier(boring_name)
 	full_name_array = boring_name.split(' ') #make array of original names
 	full_name_array.map! { |name| name.downcase } #downcase all names

 	p full_name_array
 end

 p character_changer("abcdefghijklmnopqrstuvwxyz")