def proper_factors(number)
    index = 1
    arr = []
    while index < number
        if number % index == 0
            arr << index
        end
        index += 1
    end
    arr
end
def aliquot_sum(num)
    arr = proper_factors(num)
    return arr.sum
end
def perfect_number?(number)
    if aliquot_sum(number) == number
        return true
    end
    false
end
def ideal_numbers(n)
    arr = []
    num = 1
    while arr.length < n
        if perfect_number?(num)
            arr << num
        end
        num += 1
    end
    arr
end