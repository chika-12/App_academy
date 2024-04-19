class Player
    def get_move
        arr = []
        print "'enter a position with coordinates separated with a space like `4 7`'"
        value = gets.chomp
        new_val = value.split
        new_val.each do |val|
            arr << val.to_i
        end
        arr
    end
end
