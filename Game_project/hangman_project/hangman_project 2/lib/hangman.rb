class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def self.random_word
    DICTIONARY.sample
  end
  def initialize()
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, '_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end
  def guess_word
    @guess_word
  end
  def attempted_chars
    @attempted_chars
  end
  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end
  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    else
      return false
    end
  end
  def get_matching_indices(char)
    arr = []
    if @secret_word.include?(char)
      @secret_word.each_char.with_index do |val, idx|
        if char == val
          arr << idx
        end
      end
    end
    arr
  end
  def fill_indices(char, arr)
    arr.each do |idx|
      @guess_word[idx] = char
    end
    return guess_word
  end
  def try_guess(char)
    val = get_matching_indices(char)
    fill_indices(char, val)
    num = already_attempted?(char)
    if val.empty?
      @remaining_incorrect_guesses -= 1
    end
    if num
      print "that has already been attempted"
      return false
    elsif !num
      @attempted_chars << char
      return true
    end
  end
  def ask_user_for_guess
    print "Enter a char "
    str = gets.chomp
    val = try_guess(str)
    return val
  end
  def win?
    if @guess_word.join == @secret_word
      puts "WIN"
      return true
    end
    return false
  end
  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    elsif @remaining_incorrect_guesses != 0
      return false
    end
  end
  def game_over?
    val = win?
    num = lose?
    if val || num
      puts "#{@secret_word}"
      return true
    end
    false
  end
end
