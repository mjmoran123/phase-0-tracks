# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

# add /contact route that displays an address:

get '/contact/:address' do
  "Please send snail mail to: <br> #{params[:address]}"
end

# add /great_job route

get '/great_job' do
  person = params[:name]
  p params
  if(person)
    "Good job, #{person}!"
  else
    "Good job!"
  end
end

get '/addition/:a/:b' do
  x = params[:a].to_i
  y = params[:b].to_i
  z = x + y
  "#{params[:a]} + #{params[:b]} = #{z}."
end

get '/search/:age' do
  age = params[:age]
  students = db.execute("SELECT * FROM students WHERE age=?", age)
  students.to_s
  print_str = ""
  students.each do |student|
    print_str += "NAME: #{student['name']}  CAMPUS: #{student['campus']}<br>"
  end
  print_str
end

get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end