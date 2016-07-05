#require_relative 'task'
require 'sqlite3'
require 'faker'



#Faker::Time.between(2.days.ago, Time.now)


db = SQLite3::Database.new("planner.db")





create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS planner(
    id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    start_time VARCHAR(255),
	end_time VARCHAR(255),
	location VARCHAR(255),
	description VARCHAR(255)
  )
SQL

#create planner table
db.execute(create_table_cmd)

#enter test data
#db.execute("INSERT INTO planner (date,start_time,end_time,location,description) VALUES ('06072008','16:15','','dbc chicago','meeting')")
def create_task(db,date,start_time,end_time,location,description)
  db.execute("INSERT INTO planner (date,start_time,end_time,location,description) VALUES (?,?,?,?,?)", [date,start_time,end_time,location,description])
end

# POPULATE PLANNER WITH DATA
def fake_array
	fake = []
	d = Faker::Date.forward(23)
	fake << d.to_s
	t1 = Faker::Time.forward(2, :morning)
	t1 = t1.to_s
	fake << t1[11..15]
	t2 = Faker::Time.forward(2, :evening)
	t2 = t2.to_s
	fake << t2[11..15]
	fake << Faker::Address.city
	fake << Faker::Lorem.sentence
	fake
end

10.times do
	a = fake_array
	create_task(db,a[0],a[1],a[2],a[3],a[4])
end


# computes day of week based on date and then sorts (kind of)
def day_of_week(db,day_input_from_interface)
	tasks = db.execute("SELECT * FROM planner")
	tasks.sort! {|x, y| x[1] <=> y[1]}  #sorts by earliest date first (not sorted if on same day)
	tasks.each do |task|
		 date_string = "'" + task[1] + "'"
		 day = db.execute("SELECT strftime('%w',#{date_string})")
		 if day == [["#{day_input_from_interface}"]]
		 	p task
		 end
	end
end

def schedule(db)
	puts "What is the date of your task? Enter in YYYY-MM-DD form."
	date = gets.chomp
	puts "What is the start time of your task? Enter in HH:MM in 24 hr time."
	start_time = gets.chomp
	puts "What is the end time of your task? Enter in HH:MM in 24 hr time."
	end_time = gets.chomp
	puts "What this the location of your task?"
	location = gets.chomp
	puts "Give a short description of your task."
	description = gets.chomp
	create_task(db,date,start_time,end_time,location,description)	
end

# removes a task from the table
def remove(db)
	
	tasks = db.execute("SELECT * FROM planner")
	tasks.sort! {|x, y| x[1] <=> y[1]}  #sorts by earliest date first (not sorted if on same day)
	tasks.each do |task|
		puts "ID: #{task[0]} STARTS: #{task[1]} LOCATION: #{task[4]} DESCRIPTION: #{task[5]}"
	end
	while true
		puts "Enter the ID of the task you would like to mark complete. Enter 0 to return to menu."
		removal_id = gets.chomp.to_i
		if removal_id == 0
			user_interface(db)
		end
		db.execute("DELETE from planner WHERE id= #{removal_id}")
	end
end

# shows upcoming tasks for an input day of the week
def view(db)
	flag = true
	while flag == true
		puts "Show your upcoming (1)Monday, (2)Tuesday, (3)Wednesday, (4)Thursday, (5)Friday, (6)Saturday, (7)Sunday tasks. Enter (0) to go back to the menu."
		nav = gets.chomp
		if nav == "0"
			user_interface(db)
		else
			day_of_week(db,nav.to_i)
		end
	end
end

def user_interface(db)
	puts "Would you like to (1)Schedule, (2)Mark Complete, (3)View (0)Exit?"
	nav = gets.chomp

	case nav
	when "1"
		schedule(db)
	when "2"
		remove(db)
	when "3"
		view(db)
	when "0"
		exit
	else 
		exit		
	end
end



user_interface(db)





# explore ORM by retrieving data
# tasks = db.execute("SELECT * FROM planner")
# tasks.each do |task|
#  test = "'" + task[1] + "'"
#  puts db.execute("SELECT strftime('%w',#{test})")
# end



