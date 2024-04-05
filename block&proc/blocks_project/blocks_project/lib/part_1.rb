def select_even_nums(arr)
    arr.select {|num| num % 2 == 0}
end
def reject_puppies(arr)
    arr.reject { |val| val["age"] <= 2}
end
def count_positive_subarrays(arr)
    arr.count {|ele| ele.sum > 0}
end
def aba_translate(str)
    vowel = "aeiou"
    str2 = ""
    str.each_char.with_index do |char, idx| 
        if vowel.include?(char)
            str2 += char + "b" + char
        else
            str2 += char
        end
    end
    str2
end
def aba_array(arr)
    arr.map {|val| aba_translate(val)}
end
