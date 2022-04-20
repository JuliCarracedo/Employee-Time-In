require_relative "./Routines"

include Routines


employees = []

puts "Welcome. Insert as many employees as you wish."
while true 
    employee = createEmployee
    employees << employee
    print_employee_times(employee)
    puts "Press enter to continue, or q to quit inserting users"
    break if gets.strip === "q"
end

size = employees.length

if size < 2
    puts "There are not enough users" 
    return
end

i = 0

while i < size
    j= i + 1
    while j < size
        encounters = check_encounters(employees[i], employees[j])
        puts "#{employees[i].name}-#{employees[j].name}:#{encounters}" if encounters > 0
        j += 1
    end
    i += 1
end

