# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
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

# write a GET route that prints an address

get '/contact' do
  "The White House<br>1600 Pennsylvania Ave<br>Washington, DC"
end

# write a GET route that says good job (generically or to a name)

get '/great_job/:name' do
  if params[:name]
    "Great job, #{params[:name]}!"
  else
    "Great job!"
  end
end

# write a GET route that adds 2 numbers

get '/add' do
  "#{(params[:n1].to_i) + (params[:n2].to_i)}"
end

get '/campuses/:campus' do
  students = db.execute("SELECT * FROM students WHERE campus = ?;",params[:campus])
  response = ''
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br><br>"
  end
  response
end