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