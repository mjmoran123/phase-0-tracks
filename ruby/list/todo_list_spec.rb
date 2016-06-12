class TodoList
  
  def initialize(array)
    @list = array
  end
  def get_items
    @list
  end
  def add_item(item)
    @list << item
  end
  def delete_item(item)
    @list.delete(item)
  end
  def get_item(idx)
    @list[idx]
  end
end

#list = TodoList.new(["dishes", "laundry"])
#p list.get_items


describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }
  it "stores the list items given on initialization" do
  expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end


  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end
 
  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end

end


describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end