students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]
#first we print the list of students
def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

def list(names)
  names.each do |name|
    puts name
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
