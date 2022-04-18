require_relative "./Routines"

include Routines


employees = []

puts "Welcome. Insert as many employees as you wish."
while true 
    employee = createEmployee
    employees << employee
    print_employee_times(employee)
    puts "Press any key to continue, or q to quit inserting users"
    break if gets.strip === "q"
end

