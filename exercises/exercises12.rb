def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students =[]
  # get the first names
   name = gets.strip
   # while the name is not empty, repaet this code
   while !name.empty? do
     # add the studen hash to the array
     students << {name: name, cohort: :november}

     if students.count == 1
       puts "Now we have 1 student"
     else
       puts "Now we have #{students.count} students"
     end
     #get another name from user
     name = gets.strip
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

students = input_students
if students.count > 0
print_header
print(students)
print_footer(students)
end
