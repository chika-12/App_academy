class Board
    attr_reader :size
    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n * n
    end
    def [](arr)
        return @grid[arr[0]][arr[1]]
    end
    def []=(pos, value)
        @grid[pos[0]][pos[1]] = value
    end
    def num_ships
        count = 0
        @grid.each do |line|
            line.each do |val|
                if val == :S
                    count += 1
                end
            end
        end
        return count
    end
    def attack(pos)
        if self[pos] == :S
            self[pos]= :H
            puts "you sunk my battleship!"
            return true
        else
            self[pos]= :X
            return false
        end
    end
    def place_random_ships
        ship_count = (@size * 0.25).to_i
        place_ships = 0
        while place_ships < ship_count
            x = rand(@grid.size)
            y = rand(@grid[x].size)

            if self[[x, y]] != :S
                self[[x, y]] = :S
                place_ships += 1
            end
        end
    end 
    def hidden_ships_grid
        arr = []
        @grid.each do |line|
            new_arr = []
            line.each do |char|
                if char == :S
                    new_arr << :N
                else
                    new_arr << char
                end
            end
            arr << new_arr
        end
        arr
    end
    def self.print_grid(arr)
        arr.each do |line|
            puts line.join(' ')
        end
    end
    def cheat
        Board.print_grid(@grid)
    end
    def print
        Board.print_grid(hidden_ships_grid)
    end
end
