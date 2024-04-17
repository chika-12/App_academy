class Code
  attr_reader :pegs
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  def self.valid_pegs?(arr)
    arr.each do |char|
      if !POSSIBLE_PEGS.include?(char.upcase)
        return false
      end
    end
    return true
  end
  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = []
      chars.each do |char|
        @pegs << char.upcase
      end
    else
      raise "Error"
    end
  end
  def self.random(number)
    random_pegs = Array.new(number) {POSSIBLE_PEGS.keys.sample}
    Code.new(random_pegs)
  end
  def self.from_string(string)
    chars = string.split("")
    Code.new(chars)
  end
  def [](index)
    @pegs[index]
  end
  def length
    return @pegs.length
  end
  def num_exact_matches(str)
    #arr = str.split("")
    num = 0
    str.pegs.each_with_index do |char, idx|
      if char == @pegs[idx]
        num += 1
      end
    end
    num
  end
  def num_near_matches(guess_code)
    count = 0
    (0...@pegs.length).each do |num|
      if @pegs.include?(guess_code.pegs[num]) && guess_code.pegs[num] != @pegs[num]
        count += 1
      end
    end
    count
  end
  def ==(other_code)
    if self.pegs == other_code.pegs
      return true
    else
      return false
    end
  end
end
