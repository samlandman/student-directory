students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]
#first we print the list of students
def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

def list(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#We print the total number of students
def print_footer(names)
  print "Overall, we have #{names.count} great students"
end
#\n can be used to create a new line
# print "line1\nline2\nline3"

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students_1 = []
  #get first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    students_1 << {name: name, cohort: :november}
    puts "Now we have #{students_1.count} students"
    name = gets.chomp
  end
  students_1
end

students = input_students
print_header
list(students)
print_footer(students)
