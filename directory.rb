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
print_header
list(students)
print_footer(students)
