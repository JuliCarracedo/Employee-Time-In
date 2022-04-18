require_relative "./Employee"
require_relative "./MyTime"

module Routines
    DAYS = %w[MON TUE WED THU FRI SAT SUN]
    def check_text text
       return /^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$/.match?(text) ? MyTime.new(text) : false
    end

    def createEmployee
        puts "What is the employee's name?:"
        name = gets.strip

        employee = Employee.new(name)

        DAYS.each do |day|

            time_in = ''
            time_out = ''

            while true
                puts "Add a time at which #{employee.name} checked in on #{day}. Use 24hs format in the shape of XX:XX. You can skip this day by pressing 's'."
                answer = (gets.strip)
                if answer === 's' || answer === 'S'
                    puts "#{day} skipped"
                    time_out = "skip"
                    break
                end
                time = check_text(answer) 
                if time
                    time_in = time
                    break
                else
                    puts "Invalid time format"
                end
            end
            
            while true
                break if time_out === "skip"
                puts "Add a time at which #{employee.name} checked out on #{day}. Use 24hs format in the shape of XX:XX"
                answer = (gets.strip) 
                time = check_text(answer) 
                if time && time.later_than?(time_in)
                    time_out = time
                    break
                elsif time_in.later_than?(time)
                    puts "Your chec-out time must be later than your check-in time"
                else
                    puts "Invalid time format"
                end
            end

            employee.insert_times(time_in,time_out,day) unless time_out === "skip"
        end
        return employee
    end

end