require_relative "./Employee"
require_relative "./MyTime"

module Routines
    def check_text text
        return false unless /^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.match?(text)
    end
    def createEmployee
        puts "What is the employee's name?:"
        name = gets.strip

        employee = Employee.new(name)

        while true
            while true
                puts "Add a time at which #{employee.name} checked in:"
                time = check_text(gets.strip)
        end

    end
end