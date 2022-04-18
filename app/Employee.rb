require_relative 'MyTime'
class Employee
    attr_reader :name, :times

    def initialize name
        @name = name
        @times = {}
    end

    def insert_times time_in, time_out, day
        @time_in = MyTime.new(time_in)
        @time_out = MyTime.new(time_out)

        #Check that times are correctly located

        @times[day] = [@time_in, @time_out]
    end

    private 

end