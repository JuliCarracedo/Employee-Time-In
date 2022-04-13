require_relative 'MyTime'
class Employee
    attr_reader :name, :times

    def initialize name
        @name = name
        @times = []
    end

    def insert_times timeIn timeOut
        @timeIn = MyTime.new(timeIn)
        @timeOut = MyTime.new(timeOut)
    end
end