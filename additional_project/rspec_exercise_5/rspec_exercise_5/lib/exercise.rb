def zip(*arrays)
    result = []
    length = arrays.first.length
    subarray = []

    (0...length).each do |index|
        subarray = []
        arrays.each do |array| 
            subarray <<array[index]
        end
        result << subarray
    end
    return result
end
def prizz_proc(arr, prc, proc)
    new_arr = []
    arr.each do |val|
        if (prc.call(val) || proc.call(val)) && !(prc.call(val) && proc.call(val))
            new_arr << val
        end
    end
    new_arr
end
def zany_zip(*arrays)
    result = []
    max_length = arrays.max_by(&:length).length
    #length = arrays.first.length
    
    (0...max_length).each do |index|
        subarray = []
        arrays.each do |array|
            subarray << array[index]
        end
        result << subarray
    end
    result
end
def maximum(array, &blck)
    if array.length == nil
        return nil
    end
    max = 0
    char = nil
    array.each do |val|
        value = blck.call(val)
        if value >= max
            max = value
            char = val
        end
    end
    char        
end
def my_group_by(array, &blck)
    hash = Hash.new{ |k, v| k[v] = [] }
    array.each do |char|
        hash[blck.call(char)] << char 
    end
    hash
end
def max_tie_breaker(arr, prc, &blck)
    if arr.nil? || arr.empty?
        return nil
    end
    max = 0
    new_char = nil
    arr.each do |char|
        value = blck.call(char)
        if value > max
            max = value
            new_char = char
        end
    end
    new_char
end
def silly_syllables(sentence)
    arr_sentence = sentence.split(" ")
    vowels = "aeiou"
    arr = []

    arr_sentence.each do |word|
        
        num_vowel = word.count("aeiou")
        if num_vowel <= 1
            arr << word
        else
            first_vowel = word.index(/[aeiou]/)

            prefix = word[first_vowel..-1]
            new_word = prefix.reverse
            second_vowel = new_word.index(/[aeiou]/)
            surfix = new_word[second_vowel..-1]
            arr << surfix.reverse
        end
    end
    arr.join(" ")
end
