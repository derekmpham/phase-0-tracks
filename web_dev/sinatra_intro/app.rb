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

# GET route that retrieves
# an address
get '/contact' do
	"26 Laker Drive, Los Angeles, CA 90024"
end


# GET route that takes person's name
# as query parameter
get '/great_job' do
	name = params[:name]
	if name
		"Good job, #{name}!"
	else
		"Good job!"
	end
end


# GET route that uses route parameters
# to add two numbers
get '/add/:number1/plus/:number2' do
	sum = params[:number1].to_i + params[:number2].to_i
	"The sum is #{sum}!"
end


# GET route that retrieves
# students by campus
get '/campus/:campus' do
  student = db.execute("SELECT name FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end


# RESEARCH

# Other web app frameworks/libraries include Ruby on Rails, Rack 'n' Alternatives, Volt, and Nitro.
# Other gem options for using a database with Sinatra include PostgreSQL (pg) and MySQL.
# The term web stack refers to the collection of software required for web development (i.e. to build a web site).