require_relative "code"

class Mastermind
    def initialize(length)
        @secret_code = Code.random(length)
    end
    def print_matches(length)
        p "Exact matches #{@secret_code.num_exact_matches(length)}"
        p "Near matches #{@secret_code.num_near_matches(length)}"
    end
    def ask_user_for_guess
        print "Enter a code "
        code = gets.chomp
        guess = Code.from_string(code)
        self.print_matches(guess)
        @secret_code == guess
    end
end
