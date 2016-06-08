# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def make_list(groceries)
  grocery_array = groceries.split
  shopping_list = {}
  grocery_array.each { |item| shopping_list[item] = 1 }
  p shopping_list
end

# Method to add an item to a list
# input: item name and optional quantity
# add input item to hash with specified quantity as value
# output: hash of strings => integers

def add_item(list, new_item, quantity=1)
  list[new_item] = quantity 
end

# Method to remove an item from the list
# input: item name as string
# use .delete to delete key value pair
# output: updated hash

# Method to update the quantity of an item
# input: string of item name, new quantity convert to int
# update quantity by using list[item_name] = integer
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# use EACH to print item and quantity with extra text as necessary to make pretty
# output: string output