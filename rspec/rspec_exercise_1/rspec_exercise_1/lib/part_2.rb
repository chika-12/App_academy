def hipsterfy(word)
    new_word = word.reverse
    vowel = "aeiou"
    new_word.each_char.with_index do |char, idx|
        if vowel.include?(char)
            new_word[idx] = ""
            break
        end
    end
    return new_word.reverse
end
def vowel_counts(string)
    hash = Hash.new(0)
    vowel = "aeiou"
    string.each_char do |char|
        if vowel.include?(char.downcase)
            hash[char.downcase] += 1
        end
    end
    return hash
end
def caesar_cipher(str, num)
    new_str = ""
    alph = "abcdefghijklmnopqrstuvwxyz"
    str.each_char.with_index do |char, idx|
        if alph.include?(char)
            alph.each_char.with_index do |char2, idx2|
                if str[idx] == alph[idx2].downcase
                    new_str += alph[(idx2 + num) % 26].downcase
                end
            end
        else
            new_str += char
        end
    end
    return new_str
end