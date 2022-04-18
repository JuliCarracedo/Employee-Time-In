require_relative 'MyTime'
class Employee
    attr_reader :name, :times

    def initialize name
        @name = name
        @times = []
    end

    def insert_times time_in, time_out
        @time_in = MyTime.new(time_in)
        @time_out = MyTime.new(time_out)

        #Check that times are correctly located
        if @time_in.later_than?(@time_out)
            return nil
        end

        if self.merge([@time_in, @time_out]) || self.contains?([@time_in, @time_out])
            return nil
        end

        @times << [@time_in, @time_out]
    end

    private 

end