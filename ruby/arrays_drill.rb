our_array = []
p our_array
our_array << "pencil" << "ruler"
our_array = our_array + ["paper"]
our_array.concat(["compass", "staedler eraser"])
p our_array #1 & 2
our_array.delete_at(2)
p our_array #3
our_array.insert(2, "graph paper") #4
p our_array
our_array.shift
p our_array #5

puts "Which item are you looking for in the array?"  #6
item = gets.chomp.to_s
if our_array.include?(item)
	puts "#{item} was found"
else
	puts "So sorry, #{item} was not found."
end

new_array = ["an item", "another item", "chocolate", "chocolate with peanut butter"]
super_array = our_array + new_array
p super_array



