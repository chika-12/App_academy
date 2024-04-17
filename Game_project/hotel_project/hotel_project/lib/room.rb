class Room
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end
    def capacity
        @capacity
    end
    def occupants
        @occupants
    end
    def full?
        if @occupants.length < @capacity
            return false
        elsif @occupants.length == @capacity
            return true
        end
    end
    def available_space
        num = @capacity - @occupants.length
        return num
    end
    def add_occupant(str)
        val = full?
        if !val
            @occupants << str
            return true
        elsif val
            return false
        end
    end
end