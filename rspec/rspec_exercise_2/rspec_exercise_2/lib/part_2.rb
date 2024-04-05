def palindrome?(str)
    new_str = ""
    index = str.length - 1

    while index >= 0
        new_str += str[index]
        index -= 1
    end
    if str == new_str
        return true
    else
        return false
    end 
end
def substrings(str)
    index = 0
    arr = []
    num = str.length
    num.times do |val|
        (val...num).each do |val2|
            arr << str[val..val2]
            val2 += 1
        end
    end
    return arr
end
def palindrome_substrings(str)
    arr = []
    new_arr = []
    arr = substrings(str)
    arr.each do |char|
        if palindrome?(char) && char.length > 1
            new_arr << char
        end
    end
    new_arr
end