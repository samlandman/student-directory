@students = []

#first we print the list of students
def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

def print_student_list
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
  name = STDIN.gets.chomp
  #STDIN.gets DOB

  #while the name is not empty, repeat this code
  while !name.empty? do
    puts "Which cohort are you in?"
    cohort = STDIN.gets.chomp
    if cohort.empty?
      cohort = :november
      else
    end
    #STDIN.gets DOB
    puts "Their Date of birth?"
    dob = STDIN.gets.chomp
    #STDIN.gets Hobbies
    puts "Any hobbies? Please split by comma"
    hobbies = STDIN.gets.chomp.split(",")
    push_student_name_cohort(name, cohort)
    puts "\n Welcome, #{name.split(" ")[0]}!"
    puts "\n Now we have #{@students.count} #{@students.count > 1? "students" : "student"}"
    puts "\n Please enter the names of the students"
    name = STDIN.gets.chomp
  end
end

def print_if_letter(students)
  puts "\nWhat letter do you want to sort by?"
  letter = STDIN.gets.chomp
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
  puts "\n"
  puts " 1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def save_students
  #open the file for writing
  file = File.open("students.csv","w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    push_student_name_cohort(name, cohort)
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else #if it doesn't exist
    puts "Sorry, #{filename} does not exist"
    exit #quit the program
  end
end

def push_student_name_cohort(name, cohort)
  if cohort.empty?
    cohort = :november
  end
  @students << {name: name, cohort: cohort}
end

def interactive_menu
  loop do
    #1. Print the menu and ask the user what to do
    print_menu
    #2. read the input and save it into a variable
    #3. do what the user has asked
    process(STDIN.gets.chomp)
    #4. repeat from step1
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
try_load_students
interactive_menu
