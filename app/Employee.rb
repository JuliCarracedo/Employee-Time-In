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

    def contains? new_times
        @times.each do |t1|
            if new_times[0].later_than?(t1[0]) && t1[1].later_than?(new_times[1])
                return true
            end
        end
        return false
    end

    def merge new_times
        @change = false
        @times.each do |t1|
            if t1[0].later_than?(new_times[0]) && new_times[1].later_than?(t1[0])
                t1[0] = new_times[0]
                @change = true
            end
            if t1[1].later_than?(new_times[0]) && new_times[1].later_than?(t1[1])
                t1[1] = new_times[1]
                @change = true
            end           
        end
        return @change
    end
end