@students = []
@cohort = :January


def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: @cohort}
  end
  file.close
end


def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def process(selection)
  case selection
  when "1"
    puts "you have chosen input students' details"
    input_students
  when "2"
    puts "You have chosen to display student details"
  when "3"
    puts "you have chosen to save the list of students to file"
  when "4"
    puts "you have chosen to load the list of students from file"
  when "9"
    exit
  else
    puts "I don't know ehat you meant, try again"
  end
end


def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items

end

def show_students
  print_header
  print_students_list
  print_footer
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first names
   name = STDIN.gets.chomp
   # while the name is not empty, repaet this code
   while !name.empty? do
     # add the studen hash to the array
     @students << {name: name, cohort: @cohort}
     puts "Now we have #{@students.count} students"
     #get another name from user
     name = STDIN.gets.chomp
   end
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print_students_list
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
puts "Overall, we have #{@students.count} great students"
end

def push_to_students
  @students << {student: name, cohort: @cohort}
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  if filename.nil?
    filename = "students.csv"
  end

  if File.exists?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

try_load_students
interactive_menu
