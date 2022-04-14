require_relative "Employee"

u = Employee.new("Evan")

u.insert_times("10:00","13:00")
u.insert_times("13:00","16:00")
u.insert_times("09:00","10:00")
u.times.each do |t|
   puts t[0].time
   puts t[1].time
end
