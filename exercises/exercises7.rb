def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students =[]
  # get the first names
   info = gets.chomp
   # while the name is not empty, repaet this code
   while !info.empty? do
     array = info.split(",")
     name = array[0]
     cohort = ""
       if array[1] != nil && array[1].length > 0
       cohort = array[1]
     else
     cohort = "february"
   end
     # add the studen hash to the array
     students << {name: name, cohort: cohort}
     puts "Now we have #{students.count} students"
     #get another name from user
     info = gets.chomp
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
print_header
print(students)
print_footer(students)
