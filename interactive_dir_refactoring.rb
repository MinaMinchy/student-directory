def interactive_menu
  students = []
  loop do

  print_menu
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      show_students
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print(students)
  print_footer(students)
end


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students =[]
  # get the first names
   name = gets.chomp
   # while the name is not empty, repaet this code
   while !name.empty? do
     # add the studen hash to the array
     students << {name: name, cohort: :november}
     puts "Now we have #{students.count} students"
     #get another name from user
     name = gets.chomp
   end
   #return the array of input_students
   students
 end



def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end



def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

interactive_menu
