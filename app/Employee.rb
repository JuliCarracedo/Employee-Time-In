require_relative 'MyTime'
class Employee
    attr_reader :name, :times

    def initialize name
        @name = name
        @times = {}
    end

    def insert_times time_in, time_out, day
        @time_in = time_in
        @time_out = time_out

        #Check that times are correctly located

        @times[day] = [@time_in, @time_out]
    end

    def see_day day
        
        return @times[day] ? "#{@times[day][0].time}-#{@times[day][1].time}" : nil
    end
    private 

end