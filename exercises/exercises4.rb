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
  count = 0
  while count < students.size
     puts "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort)"
     count += 1
  end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
