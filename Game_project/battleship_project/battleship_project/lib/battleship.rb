require_relative "board"
require_relative "player"

class Battleship
    attr_reader :board, :player 
    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @size = n * n
        @remaining_misses = @size / 2
    end
    def start_game
        @board.place_random_ships
        puts @board.num_ships
        @board.print
    end
    def lose?
        if @remaining_misses <= 0
            puts "you lose"
            return true
        elsif @remaining_misses > 0
            return false
        end
    end
    def win?
        num = @board.num_ships
        if num == 0
            puts "you win"
            return true
        elsif num > 0
            return false
        end
    end
    def game_over?
        if win? || lose?
            return true
        else
            return false
        end
    end
    def turn
        arr = @player.get_move
        val = @board.attack(arr)
        @board.print
        if val == false
            @remaining_misses -= 1
        elsif val == true
            @remaining_misses += 0
        end
        puts @remaining_misses
    end
end
