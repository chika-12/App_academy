def no_dupes?(arr)
    new_arr = []
    count = 0
    arr.each do |char|
        arr.each do |val|
            if char == val
                count += 1
            end
        end
        if count == 1
            new_arr << char
        end
        count = 0
    end
    new_arr
end
#p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
#p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
#p no_dupes?([true, true, true])            # => []
def no_consecutive_repeats?(arr)
    (0..arr.length - 1).each do |val|
        if arr[val] == arr[val + 1]
            return false
        end
    end
    return true
end


#p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
#p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
#p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
#p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
#p no_consecutive_repeats?(['x']                              # => true

def char_indices(str)
    hash = Hash.new {|h, v| h[v] = []}
    str.each_char.with_index do |char, idx|
        hash[char] << idx
    end
    return hash
end
#p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
#p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}
def longest_streak(str)
    longest = ""
    current_streak = ""
    index = 0
    if str.length == 1
        return str
    end
    while index < str.length
        if str[index] == str[index + 1]
            current_streak += str[index]
        else
            current_streak += str[index]
            if current_streak.length >= longest.length
                longest = current_streak
            end
            current_streak = ""
        end
        index += 1
    end
    longest
end

#p longest_streak('a')           # => 'a'
#p longest_streak('accccbbb')    # => 'cccc'
#p longest_streak('aaaxyyyyyzz') # => 'yyyyy
#p longest_streak('aaabbb')      # => 'bbb'
#p longest_streak('abc')         # => 'c'
def bi_prime?(num)
    factors = []
    (1..num).each do |val|
        if num % val == 0
            factors << val
        end
    end
    factors.each do |number|
        if prime?(number)
            factors.each do |value|
                if prime?(value)
                    if number * value == num
                        return true
                    end
                end
            end
        end
    end
    return false
end
def prime?(val)
    if val < 2
        return false
    end
    (2...val).each do |num|
        if val % num == 0
            return false
        end
    end
    return true
end
#p bi_prime?(14)   # => true
#p bi_prime?(22)   # => true
#p bi_prime?(25)   # => true
#p bi_prime?(94)   # => true
#p bi_prime?(24)   # => false
#p bi_prime?(64)   # => false
def vigenere_cipher(str, arr)
    alp = ("a".."z").to_a
    new_arr = str.split("")
    num = 0
    renew_arr = []
    new_arr.each_with_index do |char, idx|
        if alp.include?(char)
            current_index = alp.index(char)
            shift = arr[num % arr.length]
            new_index = (current_index + shift) % 26
            renew_arr << alp[new_index]
        end
    end
    return renew_arr.join        
end
#p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
#p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
#p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
#p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
#p vigenere_cipher("yawn", [5, 1])             # => "dbbo"

def vowel_rotate(str)
    new_str = str[0...str.length]
    vowel = "aeiou"
    vowel_indices = (0...str.length).select { |char| vowel.include?(str[char])}
    new_indices = vowel_indices.rotate(-1)
    vowel_indices.each_with_index do |vowel_1, idx|
        new_vowel = str[new_indices[idx]]
        new_str[vowel_1] = new_vowel
    end
    new_str

end
#p vowel_rotate('computer')      # => "cempotur"
#p vowel_rotate('oranges')       # => "erongas"
#p vowel_rotate('headphones')    # => "heedphanos"
#p vowel_rotate('bootcamp')      # => "baotcomp"
#p vowel_rotate('awesome')       # => "ewasemo"

class String
    def select(&prc)
        new_str = ""
        if prc.nil?
            return ""
        end
        self.each_char do |char|
            if prc.call(char)
                new_str += char
            end
        end
        new_str
    end
    def map!(&prc)
        self.each_char.with_index do |char, idx|
            self[1] += prc.call(char, idx)
        end
    end
end
#p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
#p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
#p "HELLOworld".select          # => ""
#word_1 = "Lovelace"
#word_1.map! do |ch| 
#   if ch == 'e'
#        '3'
#    elsif ch == 'a'
#        '4'
#    else
#        ch
#    end
#end
#p word_1        # => "Lov3l4c3"

#word_2 = "Dijkstra"
#word_2.map! do |ch, i|
#    if i.even?
#        ch.upcase
#    else
#        ch.downcase
#    end
#end
#p word_2        # => "DiJkStRa"
def multiply(a, b)
    return a * b
end

#p multiply(3, 5)        # => 15
#p multiply(5, 3)        # => 15
#p multiply(2, 4)        # => 8
#p multiply(0, 10)       # => 0
#p multiply(-3, -6)      # => 18
#p multiply(3, -6)       # => -18
#p multiply(-3, 6)       # => -18
def lucas_sequence(num)
    arr = []
    if num == 0
        return arr
    elsif num == 1
        arr << 2
        return arr
    elsif num == 2
        arr = [2,1]
        return arr
    end
    seq = lucas_sequence(num - 1)
    nex = seq[-1] + seq[-2]
    seq << nex
    seq
end
#p lucas_sequence(0)   # => []
#p lucas_sequence(1)   # => [2]    
#p lucas_sequence(2)   # => [2, 1]
#p lucas_sequence(3)   # => [2, 1, 3]
#p lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
#p lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]

def prime_factorization(num)
    (2...num).each do |fact|
        if num % fact == 0
            other_fact = num / fact
            return [*prime_factorization(fact), *prime_factorization(other_fact)]
        end

    end
    [num]
end
p prime_factorization(12)     # => [2, 2, 3]
p prime_factorization(24)     # => [2, 2, 2, 3]
p prime_factorization(25)     # => [5, 5]
p prime_factorization(60)     # => [2, 2, 3, 5]
p prime_factorization(7)      # => [7]
p prime_factorization(11)     # => [11]
p prime_factorization(2017)   # => [2017]