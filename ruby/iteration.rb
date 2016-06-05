def block_method
	c = "hey"
	d = "you"
	puts "this is before we take the block parameter"
	yield(c, d)
	puts "this is after we take the block parameter"
end

block_method { |a, b| puts "I am the block parameter #{a}, #{b}." }