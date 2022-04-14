require_relative "./Employee"
require_relative "./MyTime"

module Routines
    def check_text text
       return /^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.match?(text)? text ? false
    end
    def createEmployee
        puts "What is the employee's name?:"
        name = gets.strip

        employee = Employee.new(name)

        while true
            time_in = ''
            while true
                puts "Add a time at which #{employee.name} checked in. Use 24hs format in the shape of XX:XX"
                time = check_text(gets.strip)
                break if time
                puts "Invalid time format"
            end
        end

    end
end