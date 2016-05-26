#encrypt method: takes in a string
# -iterate over each character in given string
# -for each character we will advance one letter in the alphabet past it (b->c, h->i, z->a)
# 	-to advance we can use the .next function which is fine except for going from z to a
# 	- to deal with the z to a case we will work with index mod 26 on this string "abcdefghijklmnopqrstuvwxyz"
# - return the encrypted string

def encrypt (str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	len = str.length
	counter = 0
	while counter < len
		new_letter = alphabet[(alphabet.index(str[counter]) + 1) % 26]
		encrypted_string = encrypted_string + new_letter
		counter += 1
	end
	return encrypted_string
end


# decrypt method: takes in an encrypted string
#  -iterate over each character in the string
#  	- change each letter to the letter before in the alphabet
#  	-this requires care with a->z as above in encrypt
#  	-we will still use the "abcdefghijklmnopqrstuvwxyz" string % 26 to do this
#  return the decrypted string