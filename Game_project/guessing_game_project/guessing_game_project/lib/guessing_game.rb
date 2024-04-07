class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
        @win = false
    end
    def num_attempts
        @num_attempts
    end
    def win
        @win
    end
    def game_over?
        @game_over
    end
    def check_num(num)
        @num_attempts += 1
        if @num_attempts == 5
            @game_over = true
            print "You lost in #{@num_attempts} tries \nTry again!\n"
            puts "Designed by Pontex technogies"
            return
        end
        if num == @secret_num
            @win = true
            @game_over = true
            puts "You won in #{@num_attempts} tries"
            puts "Designed by Pontex technologies"
        elsif num > @secret_num
            print "too big"
        elsif num < @secret_num
            print "too small\n"
        end
    end
    def ask_user
        print "enter a number "
        num = gets.chomp.to_i
        check_num(num)
    end

end
