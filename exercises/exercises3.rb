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
  filtered_students = filter_by_length(students)

  filtered_students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def filter_by_length(names)
  names.select {|student| student[:name].length < 12}
end


def print_footer(names)
puts "Overall, we have #{names.count} great students. #{filter_by_length(names).count} have names with less than 12 characters."
end

students = input_students
print_header
print(students)
print_footer(students)
