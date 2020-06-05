#students_1 = [
#{name: "Dr. Hannibal Lecter", cohort: :november},
#{name: "Darth Vader", cohort: :november},
#{name: "Nurse Ratched", cohort: :october},
#{name: "Michael Corleone", cohort: :november},
#{name: "Alex DeLarge", cohort: :november},
#{name: "The Wicked Witch of the West", cohort: :november},
#{name: "Terminator", cohort: :november},
#{name: "Freddy Krueger", cohort: :november},
#{name: "The Joker", cohort: :november},
#{name: "Joffrey Baratheon", cohort: :november},
#{name: "Norman Bates", cohort: :november}
#]

#first we print the list of students
def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

def list
  @students.each_with_index do |student,index|
    puts "#{index+1}. #{student[:name]}  (#{student[:cohort]} cohort)"
  end
end

#We print the total number of students
def print_footer
  if @students == []
  else
  print "\n Overall, we have #{@students.count} great #{@students.count > 1? "students" : "student"}"
  end
  #\n can be used to create a new line
  # print "line1\nline2\nline3"
end


def input_students
  puts "\n Please enter the names of the students"
  puts "\n To finish, just hit return twice \n"
  #get first name
  name = gets.chomp
  #gets DOB

  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "Which cohort are you in?"
    cohort = gets.chomp
    if cohort.empty?
      cohort = :november
      else
    end
    #Gets DOB
    puts "Their Date of birth?"
    dob = gets.chomp
    #Gets Hobbies
    puts "Any hobbies? Please split by comma"
    hobbies = gets.chomp.split(",")
    @students <<
      { name: name,
        cohort: cohort,
        DOB: dob,
        hobbies: hobbies
      }
    puts "\n Welcome, #{name.split(" ")[0]}!"
    puts "\n Now we have #{@students.count} #{@students.count > 1? "students" : "student"}"
    puts "\n Please enter the names of the students"
    name = gets.chomp
  end
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

def cohorts(students)
  puts "\n"
  cohorts = students.map{|student| student[:cohort]}.uniq

  cohorts.each do |cohort|
    puts "\n"
    puts cohort
    puts "\n"

    students.each do |student|
      if  cohort == student[:cohort]
      puts student[:name]
      end
    end
  end
end

def print_menu
  puts "\n 1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  list
  print_footer
end

def interactive_menu
  @students = [{name: "Dr. Hannibal Lecter", cohort: :november}]
  loop do
    #1. Print the menu and ask the user what to do
    print_menu
    #2. read the input and save it into a variable
    selection = gets.chomp
    #3. do what the user has asked
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    #4. repeat from step1
    selection = gets.chomp
    end
  end
end
#students = input_students
#print_header
#list(students)
#print_footer(students)
#print_if_letter(students)
#characters_less_12(students)
#print_if_letter_usingloop(students)
#cohorts(students)

interactive_menu
