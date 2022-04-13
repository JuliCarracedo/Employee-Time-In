class MyTime 
    attr_reader :time
    def initialize time
        @time = time
    end

    def later_than? other_time
        t = @time.tr(':','')
        ot = other_time.tr(':','')

        return parse_int(t) > parse_int(ot)
    end
end