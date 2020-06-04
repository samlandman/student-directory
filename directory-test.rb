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
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]}  (#{student[:cohort]} cohort)"
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
  students = []
  #get first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_if_letter(students)
  puts "\nWhat letter do you want to sort by?"
  letter = gets.chomp
  students.each_with_index do |student,index|
    if student[:name].to_str[0].downcase == letter.downcase
      puts "#{index+1}. #{student[:name]}  (#{student[:cohort]} cohort)"
    else
    end
  end
end

def characters_less_12(students)
  puts "\n\nThose with characters less than 12 are as follows:\n"
  students.each_with_index do |student,index|
    if student[:name].length < 12
      puts "#{index+1}. #{student[:name]} (#{student[:cohort]})}"
    end
  end
end

def print_if_letter_usingloop(students)
  i = 0
  until i == students.count
    puts "#{i+1}. #{students[i][:name]}  (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

#students = input_students
print_header
#list(students)
#print_footer(students)
#print_if_letter(students)
#characters_less_12(students)
print_if_letter_usingloop(students)
