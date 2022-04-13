require_relative "Employee"

u = Employee.new("Evan")

u.insert_times("10:00","11:00")
u.times.each do |t|
   puts t[0].later_than? t[1]
end
