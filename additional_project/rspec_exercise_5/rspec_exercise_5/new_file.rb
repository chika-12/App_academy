def silly_syllables(sentence)
    arr_sentence = sentence.split(" ")
    vowels = "aeiou"
    arr = []
    p arr_sentence

    arr_sentence.each do |word|
        num_vowel = word.count("aeiou")

        if num_vowel <= 1
            arr << word
        else
            first_vowel = word.index(/[aeiou]/)

            #prefix = word[0..first_vowel-1]
            surfix = word[first_vowel..-1]
            new_word = surfix.reverse
            second_vowel = new_word.index(/[aeiou]/)
            prefix = new_word[second_vowel..-1]

            reverse_word = prefix.reverse
            arr << reverse_word
        end
    end
    arr.join(" ")
end
p silly_syllables("properly and precisely written code")