class MyTime 
    attr_reader :time
    def initialize time
        @time = time
    end

    def later_than? other_time
        t = @time.tr(':','').to_i
        ot = other_time.time.tr(':','').to_i

        return  t > ot 
    end

    def later_than_or_equal? other_time
        t = @time.tr(':','').to_i
        ot = other_time.time.tr(':','').to_i

        return  t >= ot 
    end

    def is
        return @time
    end
end