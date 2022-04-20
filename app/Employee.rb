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

        @times[day] = {time_in: @time_in, time_out:@time_out}
    end

    def see_day day 
        return @times[day] ? "#{@times[day][:time_in].time}-#{@times[day][:time_out].time}" : nil
    end

    def times_encountered employee2
        days = %w[MON TUE WED THU FRI SAT SUN]
        times1 = @times
        times2 = employee2.times
        encounters = 0 

        days.each do |day|
            if times1[day] && times2[day]
                if(times1[day][:time_in].later_than_or_equal?(times2[day][:time_in]) && times2[day][:time_out].later_than_or_equal?(times1[day][:time_in])) ||     (times2[day][:time_out].later_than_or_equal?(times1[day][:time_in]) && times1[day][:time_out].later_than_or_equal?(times2[day][:time_out]))

                    encounters += 1
                end
            end
        end
        encounters
    end

end