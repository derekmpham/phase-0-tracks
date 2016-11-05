# CREATE AN ADIDAS WAIT LIST

# PSEUDOCODE

# make a wait list for the next hot adidas shoes
	# create database with name and email

# get people off of the wait list (new method)
	# delete person on top of the wait list (database)
	# save deleted person by equating him to new variable
	# print out info for adidas person to reach out to deleted person


# ACTUAL PROGRAM

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("wait_list.db")
db.results_as_hash = true

# delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wait_list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
  )
SQL

# create a waitlist table (if it's not there already)
db.execute(create_table_cmd)

# add lots of people on the wait list 
def create_waiter(db, name, email) #-->method to create single person on waiting list
	db.execute("INSERT INTO wait_list(name, email) VALUES (?, ?)", [name, email])
end

10000.times do #-->add 10000 people to waiting list
	create_waiter(db, Faker::Name.name, Faker::Internet.email) #-->generate random name and email and put info into waitlist database (do this 10000 times to add 10000 individuals)
end

# take people off the wait list
def off_wait_list(db)
	selected_people = db.execute("SELECT * FROM wait_list LIMIT 1")
	db.execute("DELETE FROM wait_list WHERE id = ?", [selected_people.first["id"]])
	puts "#{selected_people.first["name"].upcase} has been removed from the wait list. Contact this person at: #{selected_people.first["email"].upcase}"
end


# DRIVER CODE
off_wait_list(db) #-->expect to print deleted person's name and email AND first person on remaining wait list with id = 2








